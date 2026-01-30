library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity datapath_tb is
end datapath_tb;

architecture testbench of datapath_tb is
    component datapath
        port (
            clk : in std_logic;
            input : in std_logic_vector(3 downto 0);
            ie : in std_logic;
            alu_ctrl : in std_logic_vector(2 downto 0);
            load : in std_logic;
            clear : in std_logic;
            oe : in std_logic;
            output : out std_logic_vector(3 downto 0)
        );
    end component;
    
    -- Señales de prueba
    signal clk : std_logic := '0';
    signal input : std_logic_vector(3 downto 0);
    signal ie, load, clear, oe : std_logic;
    signal alu_ctrl : std_logic_vector(2 downto 0);
    signal output : std_logic_vector(3 downto 0);
    
    constant CLK_PERIOD : time := 10 ns;
    
begin
    uut: datapath
        port map (
            clk => clk,
            input => input,
            ie => ie,
            alu_ctrl => alu_ctrl,
            load => load,
            clear => clear,
            oe => oe,
            output => output
        );
    
    clk_process: process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;
    
    stim_proc: process
        variable expected_sum : integer := 0;
        variable current_output : integer;
    begin
        report "========================================";
        report "INICIANDO PRUEBA DEL DATAPATH";
        report "========================================";
        report "Objetivo: Sumar numeros del 1 al 10";
        report "========================================";
        
        -- Inicializar señales
        input <= "0000";
        ie <= '0';
        alu_ctrl <= "000";
        load <= '0';
        clear <= '0';
        oe <= '0';
        
        wait for CLK_PERIOD;
        
        -- 1. CLEAR registro (acumulador = 0)
        report "Paso 1: CLEAR del registro (acumulador = 0)";
        clear <= '1';
        wait for CLK_PERIOD;
        clear <= '0';
        wait for CLK_PERIOD;
        
        -- Mostrar 0
        report "Paso 2: Mostrar valor inicial (deberia ser 0)";
        oe <= '1';
        wait for CLK_PERIOD;
        current_output := to_integer(unsigned(output));
        report "  Valor mostrado: " & integer'image(current_output);
        
        if current_output = 0 then
            report "   CORRECTO: Acumulador inicializado a 0";
        else
            report "   ERROR: Esperado 0, obtenido " & integer'image(current_output) severity error;
        end if;
        
        oe <= '0';
        wait for CLK_PERIOD;
        
        report "========================================";
        report "Paso 3: Iniciar suma de numeros del 1 al 10";
        report "========================================";
        
        -- Sumar números del 1 al 10
        for i in 1 to 10 loop
            expected_sum := expected_sum + 1;
            
            report "Iteracion " & integer'image(i) & ": Sumar 1";
            report "  Acumulado esperado: " & integer'image(expected_sum);
            
            -- Configurar número a sumar (1)
            input <= "0001";
            ie <= '1';          -- Usar input
            alu_ctrl <= "001";  -- SUMA (a + b)
            load <= '1';
            wait for CLK_PERIOD;
            
            -- Mostrar acumulado parcial
            load <= '0';
            oe <= '1';
            wait for CLK_PERIOD;
            
            current_output := to_integer(unsigned(output));
            report "  Acumulado obtenido: " & integer'image(current_output);
            
            -- Verificar
            if current_output = expected_sum then
                report "   CORRECTO";
            else
                report "   ERROR: Esperado " & integer'image(expected_sum) & 
                       ", obtenido " & integer'image(current_output) severity error;
            end if;
            
            oe <= '0';
            wait for CLK_PERIOD;
        end loop;
        
        report "========================================";
        report "Paso 4: Verificar resultado final";
        report "========================================";
        
        -- Mostrar resultado final por más tiempo
        oe <= '1';
        wait for CLK_PERIOD;
        
        current_output := to_integer(unsigned(output));
        report "Resultado final obtenido: " & integer'image(current_output);
        report "Resultado final esperado: 10 (suma de 1+1+...+1, 10 veces)";
        
        if current_output = 10 then
            report "========================================";
            report "¡PRUEBA EXITOSA!";
            report "El datapath suma correctamente.";
            report "========================================";
        else
            report "========================================";
            report "¡PRUEBA FALLIDA!";
            report "Error en la suma acumulativa.";
            report "========================================" severity error;
        end if;
        
        wait for 2*CLK_PERIOD;
        
        report "========================================";
        report "FIN DE LA SIMULACION";
        report "========================================";
        
        wait;
    end process;
    
end testbench;