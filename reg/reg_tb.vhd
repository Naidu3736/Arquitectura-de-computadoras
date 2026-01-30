library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_tb is
end reg_tb;

architecture behavioral of reg_tb is
    -- Component declaration
    component reg
        port (
            clk   : in std_logic;
            clear : in std_logic;
            load  : in std_logic;
            d     : in std_logic_vector(3 downto 0);
            q     : out std_logic_vector(3 downto 0)
        );
    end component;
    
    -- Test bench signals
    signal clk_tb   : std_logic := '0';
    signal clear_tb : std_logic := '0';
    signal load_tb  : std_logic := '0';
    signal d_tb     : std_logic_vector(3 downto 0) := (others => '0');
    signal q_tb     : std_logic_vector(3 downto 0);
    
    -- Clock period definition
    constant clk_period : time := 10 ns;
    
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: reg
        port map (
            clk   => clk_tb,
            clear => clear_tb,
            load  => load_tb,
            d     => d_tb,
            q     => q_tb
        );
    
    -- Clock generation process
    clk_process: process
    begin
        while true loop
            clk_tb <= '0';
            wait for clk_period/2;
            clk_tb <= '1';
            wait for clk_period/2;
        end loop;
    end process;
    
    -- Stimulus process
    stimulus: process
    begin
        -- Inicializar todas las entradas
        clear_tb <= '0';
        load_tb <= '0';
        d_tb <= (others => '0');
        wait for 20 ns;
        
        -- Test 1: Clear asíncrono (debe funcionar independiente del clock)
        report "Test 1: Clear asíncrono";
        clear_tb <= '1';
        wait for 15 ns;  -- Tiempo entre flancos de reloj
        assert q_tb = "0000"
            report "Error en Test 1: Clear no funcionó"
            severity error;
        
        -- Test 2: Cargar un valor con load = '1'
        report "Test 2: Carga de dato";
        clear_tb <= '0';
        load_tb <= '1';
        d_tb <= "1101";
        wait until rising_edge(clk_tb);
        wait for 1 ns;  -- Esperar que se estabilice la salida
        assert q_tb = "1101"
            report "Error en Test 2: No se cargó el dato correctamente"
            severity error;
        
        -- Test 3: Verificar que no carga cuando load = '0'
        report "Test 3: No carga cuando load = '0'";
        load_tb <= '0';
        d_tb <= "0110";
        wait until rising_edge(clk_tb);
        wait for 1 ns;
        assert q_tb = "1101"
            report "Error en Test 3: Cambió el valor cuando load = '0'"
            severity error;
        
        -- Test 4: Clear durante operación normal
        report "Test 4: Clear durante operación";
        load_tb <= '1';
        d_tb <= "1111";
        wait for 5 ns;
        clear_tb <= '1';
        wait for 5 ns;
        assert q_tb = "0000"
            report "Error en Test 4: Clear no prevaleció sobre load"
            severity error;
        
        -- Test 5: Secuencia de valores
        report "Test 5: Secuencia de valores";
        clear_tb <= '0';
        
        -- Cargar secuencia de valores
        for i in 0 to 15 loop
            d_tb <= std_logic_vector(to_unsigned(i, 4));
            load_tb <= '1';
            wait until rising_edge(clk_tb);
            wait for 1 ns;
            assert q_tb = std_logic_vector(to_unsigned(i, 4))
                report "Error en Test 5: Valor " & integer'image(i) & " no cargado"
                severity error;
            
            -- Verificar retención
            load_tb <= '0';
            wait until rising_edge(clk_tb);
            wait for 1 ns;
            assert q_tb = std_logic_vector(to_unsigned(i, 4))
                report "Error en Test 5: Valor " & integer'image(i) & " no se retuvo"
                severity error;
        end loop;
        
        -- Test 6: Clear asíncrono durante múltiples ciclos
        report "Test 6: Clear asíncrono prolongado";
        d_tb <= "1010";
        load_tb <= '1';
        clear_tb <= '1';  -- Clear activo prevalece
        wait for 25 ns;
        assert q_tb = "0000"
            report "Error en Test 6: Clear no mantuvo el reset"
            severity error;
        
        -- Test 7: Transiciones en el borde del clock
        report "Test 7: Transiciones en borde de clock";
        clear_tb <= '0';
        d_tb <= "0011";
        wait until falling_edge(clk_tb);
        load_tb <= '1';  -- Activar load antes del flanco ascendente
        wait until rising_edge(clk_tb);
        wait for 1 ns;
        assert q_tb = "0011"
            report "Error en Test 7: No capturó en flanco ascendente"
            severity error;
        
        -- Test 8: Finalizar con clear
        report "Test 8: Finalizar test bench";
        clear_tb <= '1';
        wait for 20 ns;
        
        report "========================================";
        report "Todos los tests completados exitosamente";
        report "========================================";
        
        -- Finalizar simulación
        wait;
    end process;
    
    -- Monitoreo de señales (opcional)
    monitor: process
    begin
        wait on q_tb;
        report "Time: " & time'image(now) & 
               " | CLK: " & std_logic'image(clk_tb) &
               " | CLEAR: " & std_logic'image(clear_tb) &
               " | LOAD: " & std_logic'image(load_tb) &
               " | D: " & integer'image(to_integer(unsigned(d_tb))) &
               " | Q: " & integer'image(to_integer(unsigned(q_tb)));
    end process;
    
end behavioral;