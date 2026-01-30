library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_tb is
end entity alu_tb;

architecture testbench of alu_tb is
    
    component alu
        port (
            a : in std_logic_vector(3 downto 0);
            b : in std_logic_vector(3 downto 0);
            alu_ctrl : in std_logic_vector(2 downto 0);
            s : out std_logic_vector(3 downto 0)
        );
    end component;
    
    signal a, b, s : std_logic_vector(3 downto 0);
    signal alu_ctrl : std_logic_vector(2 downto 0);
    
begin
    UUT: alu
        port map (
            a => a,
            b => b,
            alu_ctrl => alu_ctrl,
            s => s
        );
    
    -- Stimulus process
    stimulus: process
        variable expected_result : std_logic_vector(3 downto 0);
        variable test_passed : boolean;
        variable test_count : integer := 0;
        variable pass_count : integer := 0;
    begin
        -- Inicializar señales
        a <= (others => '0');
        b <= (others => '0');
        alu_ctrl <= (others => '0');
        
        wait for 10 ns;
        
        report "=== INICIANDO PRUEBAS DE LA ALU ===";
        
        -- TEST 1: IDENTIDAD (000)
        report "TEST 1: Operación IDENTIDAD (000)";
        test_count := test_count + 1;
        a <= "1101";  -- 13 decimal
        b <= "0010";  -- 2 decimal (no se usa)
        alu_ctrl <= "000";
        wait for 10 ns;
        
        expected_result := "1101";  -- Debería pasar 'a' sin cambios
        if s = expected_result then
            report "  Correcto: " & integer'image(to_integer(unsigned(s)));
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;
        
        -- TEST 2: SUMA (001)
        report "TEST 2: Operación SUMA (001)";
        test_count := test_count + 1;
        a <= "0111";  -- 7 decimal
        b <= "0011";  -- 3 decimal
        alu_ctrl <= "001";
        wait for 10 ns;
        
        expected_result := "1010";  -- 7 + 3 = 10
        if s = expected_result then
            report "   Correcto: " & integer'image(to_integer(unsigned(s)));
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;
        
        -- TEST 3: RESTA (010)
        report "TEST 3: Operación RESTA (010)";
        test_count := test_count + 1;
        a <= "1010";  -- 10 decimal
        b <= "0011";  -- 3 decimal
        alu_ctrl <= "010";
        wait for 10 ns;
        
        expected_result := "0111";  -- 10 - 3 = 7
        if s = expected_result then
            report "   Correcto: " & integer'image(to_integer(unsigned(s)));
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;
        
        -- TEST 4: INCREMENTO (011)
        report "TEST 4: Operación INCREMENTO (011)";
        test_count := test_count + 1;
        a <= "1100";  -- 12 decimal
        b <= "0101";  -- 5 decimal (no se usa)
        alu_ctrl <= "011";
        wait for 10 ns;
        
        expected_result := "1101";  -- 12 + 1 = 13
        if s = expected_result then
            report "   Correcto: " & integer'image(to_integer(unsigned(s)));
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;
        
        -- TEST 5: DECREMENTO (100)
        report "TEST 5: Operación DECREMENTO (100)";
        test_count := test_count + 1;
        a <= "0010";  -- 2 decimal
        b <= "1000";  -- 8 decimal (no se usa)
        alu_ctrl <= "100";
        wait for 10 ns;
        
        expected_result := "0001";  -- 2 - 1 = 1
        if s = expected_result then
            report "   Correcto: " & integer'image(to_integer(unsigned(s)));
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;
        
        -- TEST 6: AND BITWISE (101)
        report "TEST 6: Operación AND (101)";
        test_count := test_count + 1;
        a <= "1100";  -- 12 decimal
        b <= "1010";  -- 10 decimal
        alu_ctrl <= "101";
        wait for 10 ns;
        
        expected_result := "1000";  -- 1100 AND 1010 = 1000 (8 decimal)
        if s = expected_result then
            report "   Correcto: " & integer'image(to_integer(unsigned(s)));
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;
        
        -- TEST 7: OR BITWISE (110)
        report "TEST 7: Operación OR (110)";
        test_count := test_count + 1;
        a <= "1100";  -- 12 decimal
        b <= "0011";  -- 3 decimal
        alu_ctrl <= "110";
        wait for 10 ns;
        
        expected_result := "1111";  -- 1100 OR 0011 = 1111 (15 decimal)
        if s = expected_result then
            report "   Correcto: " & integer'image(to_integer(unsigned(s)));
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;
        
        -- TEST 8: NOT BITWISE (111)
        report "TEST 8: Operación NOT (111)";
        test_count := test_count + 1;
        a <= "1010";  -- 10 decimal
        b <= "0101";  -- 5 decimal (no se usa)
        alu_ctrl <= "111";
        wait for 10 ns;
        
        expected_result := "0101";  -- NOT 1010 = 0101 (5 decimal)
        if s = expected_result then
            report "   Correcto: " & integer'image(to_integer(unsigned(s)));
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;
        
        -- TEST 9: CASOS ESPECIALES - Suma con overflow
        report "TEST 9: Suma con overflow";
        test_count := test_count + 1;
        a <= "1111";  -- 15 decimal
        b <= "0001";  -- 1 decimal
        alu_ctrl <= "001";
        wait for 10 ns;
        
        expected_result := "0000";  -- 15 + 1 = 16, pero con 4 bits: 0 (overflow)
        if s = expected_result then
            report "   Correcto: " & integer'image(to_integer(unsigned(s))) & " (overflow manejado)";
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;
        
        -- TEST 10: Resta con underflow
        report "TEST 10: Resta con underflow";
        test_count := test_count + 1;
        a <= "0000";  -- 0 decimal
        b <= "0001";  -- 1 decimal
        alu_ctrl <= "010";
        wait for 10 ns;
        
        expected_result := "1111";  -- 0 - 1 = -1, pero en unsigned: 15 (underflow)
        if s = expected_result then
            report "   Correcto: " & integer'image(to_integer(unsigned(s))) & " (underflow manejado)";
            pass_count := pass_count + 1;
        else
            report "   Error: Esperado " & integer'image(to_integer(unsigned(expected_result))) &
                   ", Obtenido " & integer'image(to_integer(unsigned(s))) severity error;
        end if;      
        
        -- Resumen de pruebas
        wait for 10 ns;
        report "========================================";
        report "RESUMEN DE PRUEBAS DE LA ALU";
        report "========================================";
        report "Pruebas ejecutadas: " & integer'image(test_count);
        report "Pruebas aprobadas:  " & integer'image(pass_count);
        report "Pruebas falladas:   " & integer'image(test_count - pass_count);
        
        if pass_count = test_count then
            report "¡TODAS LAS PRUEBAS PASARON CORRECTAMENTE!";
        else
            report "ALGUNAS PRUEBAS FALLARON" severity error;
        end if;
        
        report "=== FIN DE LAS PRUEBAS ===";
        
        wait;
    end process;
    
end architecture testbench;