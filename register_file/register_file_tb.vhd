library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file_tb is
end register_file_tb;

architecture simple_test of register_file_tb is
    component register_file
        port (
            clk : in std_logic;
            wd : in std_logic_vector(3 downto 0);
            we : in std_logic;
            wa : in std_logic_vector(1 downto 0);
            
            rae : in std_logic;
            raa : in std_logic_vector(1 downto 0);
            
            rbe : in std_logic;
            rba : std_logic_vector(1 downto 0);
            
            aout : out std_logic_vector(3 downto 0);
            bout : out std_logic_vector(3 downto 0)
        );
    end component;
    
    -- Señales de prueba
    signal clk : std_logic := '0';
    signal wd : std_logic_vector(3 downto 0);
    signal we : std_logic;
    signal wa : std_logic_vector(1 downto 0);
    signal rae : std_logic;
    signal raa : std_logic_vector(1 downto 0);
    signal rbe : std_logic;
    signal rba : std_logic_vector(1 downto 0);
    signal aout : std_logic_vector(3 downto 0);
    signal bout : std_logic_vector(3 downto 0);
    
    constant CLK_PERIOD : time := 10 ns;
    
begin

    -- Instanciar el register file
    uut: register_file
        port map (
            clk => clk,
            wd => wd,
            we => we,
            wa => wa,
            rae => rae,
            raa => raa,
            rbe => rbe,
            rba => rba,
            aout => aout,
            bout => bout
        );
    
    -- Generación de reloj simple
    clk_process: process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;
    
    -- Proceso de prueba principal
    stimulus: process
    begin
        -- Inicializar todas las señales
        wd <= "0000";
        we <= '0';
        wa <= "00";
        rae <= '0';
        raa <= "00";
        rbe <= '0';
        rba <= "00";
        
        wait for CLK_PERIOD;
        
        report "=== TEST 1: Escritura simple ===";
        
        -- Escribir 5 en R0
        wd <= "0101";  -- 5 decimal
        we <= '1';
        wa <= "00";    -- R0
        wait for CLK_PERIOD;
        we <= '0';
        
        wait for CLK_PERIOD;
        
        -- Escribir 10 en R1
        wd <= "1010";  -- 10 decimal
        we <= '1';
        wa <= "01";    -- R1
        wait for CLK_PERIOD;
        we <= '0';
        
        wait for CLK_PERIOD;
        
        -- Escribir 3 en R2
        wd <= "0011";  -- 3 decimal
        we <= '1';
        wa <= "10";    -- R2
        wait for CLK_PERIOD;
        we <= '0';
        
        wait for CLK_PERIOD;
        
        -- Escribir 7 en R3
        wd <= "0111";  -- 7 decimal
        we <= '1';
        wa <= "11";    -- R3
        wait for CLK_PERIOD;
        we <= '0';
        
        wait for CLK_PERIOD;
        
        report "=== TEST 2: Lectura simple (puerto A) ===";
        
        -- Leer R0 por puerto A
        rae <= '1';
        raa <= "00";  -- R0
        wait for CLK_PERIOD;
        report "Leer R0: Esperado 5, Obtenido " & integer'image(to_integer(unsigned(aout)));
        
        -- Leer R1 por puerto A
        raa <= "01";  -- R1
        wait for CLK_PERIOD;
        report "Leer R1: Esperado 10, Obtenido " & integer'image(to_integer(unsigned(aout)));
        
        -- Leer R2 por puerto A
        raa <= "10";  -- R2
        wait for CLK_PERIOD;
        report "Leer R2: Esperado 3, Obtenido " & integer'image(to_integer(unsigned(aout)));
        
        -- Leer R3 por puerto A
        raa <= "11";  -- R3
        wait for CLK_PERIOD;
        report "Leer R3: Esperado 7, Obtenido " & integer'image(to_integer(unsigned(aout)));
        
        rae <= '0';
        wait for CLK_PERIOD;
        
        report "=== TEST 3: Lectura dual (ambos puertos) ===";
        
        -- Leer R0 por puerto A y R1 por puerto B simultáneamente
        rae <= '1';
        rbe <= '1';
        raa <= "00";  -- R0
        rba <= "01";  -- R1
        wait for CLK_PERIOD;
        report "Puerto A (R0): Esperado 5, Obtenido " & integer'image(to_integer(unsigned(aout)));
        report "Puerto B (R1): Esperado 10, Obtenido " & integer'image(to_integer(unsigned(bout)));
        
        -- Leer R2 por puerto A y R3 por puerto B simultáneamente
        raa <= "10";  -- R2
        rba <= "11";  -- R3
        wait for CLK_PERIOD;
        report "Puerto A (R2): Esperado 3, Obtenido " & integer'image(to_integer(unsigned(aout)));
        report "Puerto B (R3): Esperado 7, Obtenido " & integer'image(to_integer(unsigned(bout)));
        
        -- Leer R1 por puerto A y R2 por puerto B
        raa <= "01";  -- R1
        rba <= "10";  -- R2
        wait for CLK_PERIOD;
        report "Puerto A (R1): Esperado 10, Obtenido " & integer'image(to_integer(unsigned(aout)));
        report "Puerto B (R2): Esperado 3, Obtenido " & integer'image(to_integer(unsigned(bout)));
        
        rae <= '0';
        rbe <= '0';
        wait for CLK_PERIOD;
        
        report "=== TEST 4: Escritura y lectura en el mismo ciclo ===";
        
        -- Escribir nuevo valor en R0 mientras leemos R1
        wd <= "1111";  -- 15 decimal
        we <= '1';
        wa <= "00";    -- Escribir en R0
        
        rae <= '1';
        raa <= "01";   -- Leer R1 (10)
        rbe <= '1';
        rba <= "10";   -- Leer R2 (3)
        
        wait for CLK_PERIOD;
        report "Mientras escribíamos 15 en R0:";
        report "  Puertos de lectura deben mantener valores viejos";
        report "  Puerto A (R1): Esperado 10, Obtenido " & integer'image(to_integer(unsigned(aout)));
        report "  Puerto B (R2): Esperado 3, Obtenido " & integer'image(to_integer(unsigned(bout)));
        
        we <= '0';
        rae <= '0';
        rbe <= '0';
        wait for CLK_PERIOD;
        
        -- Verificar que R0 ahora tiene 15
        rae <= '1';
        raa <= "00";  -- Leer R0
        wait for CLK_PERIOD;
        report "R0 después de escritura: Esperado 15, Obtenido " & integer'image(to_integer(unsigned(aout)));
        
        rae <= '0';
        
        wait for CLK_PERIOD;
        
        report "=== TEST 5: Prueba de escritura en registro específico ===";
        
        -- Escribir solo en R2, otros registros deben mantener valores
        wd <= "1100";  -- 12 decimal
        we <= '1';
        wa <= "10";    -- Solo R2
        wait for CLK_PERIOD;
        we <= '0';
        wait for CLK_PERIOD;
        
        -- Verificar todos los registros
        report "Verificación final de todos los registros:";
        
        for i in 0 to 3 loop
            raa <= std_logic_vector(to_unsigned(i, 2));
            rae <= '1';
            wait for CLK_PERIOD;
            
            case i is
                when 0 => 
                    report "R0: Esperado 15, Obtenido " & integer'image(to_integer(unsigned(aout)));
                when 1 => 
                    report "R1: Esperado 10, Obtenido " & integer'image(to_integer(unsigned(aout)));
                when 2 => 
                    report "R2: Esperado 12, Obtenido " & integer'image(to_integer(unsigned(aout)));
                when 3 => 
                    report "R3: Esperado 7, Obtenido " & integer'image(to_integer(unsigned(aout)));
                when others => null;
            end case;
        end loop;
        
        rae <= '0';
        
        wait for CLK_PERIOD;
        report "=== PRUEBA COMPLETADA ===";
        
        -- Finalizar simulación
        wait;
    end process;
    
end simple_test;