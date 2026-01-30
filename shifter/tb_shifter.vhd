library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_shifter is
end tb_shifter;

architecture behavior of tb_shifter is

    signal a       : std_logic_vector(3 downto 0) := (others => '0');
    signal sh_ctrl : std_logic_vector(1 downto 0) := (others => '0');
    signal s       : std_logic_vector(3 downto 0);

    component shifter is
        port (
            sh_ctrl : in  std_logic_vector(1 downto 0);
            a       : in  std_logic_vector(3 downto 0);
            s       : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    UUT : shifter
        port map (
            sh_ctrl => sh_ctrl,
            a       => a,
            s       => s
        );

    stim_proc: process
        -- Función para convertir std_logic_vector a string
        function slv_to_string(vec : std_logic_vector) return string is
            variable result : string(1 to vec'length);
        begin
            for i in vec'range loop
                case vec(i) is
                    when '1' => result(vec'high - i + 1) := '1';
                    when '0' => result(vec'high - i + 1) := '0';
                    when others => result(vec'high - i + 1) := 'X';
                end case;
            end loop;
            return result;
        end function;
        
    begin
        report "=== INICIANDO PRUEBAS DEL SHIFTER ===";
        wait for 10 ns;

        ------------------------------------------------------------
        -- Prueba 1: Pass through (sh_ctrl = "00")
        ------------------------------------------------------------
        report "Prueba 1: Pass through (sh_ctrl = 00)";
        report "  Entrada: 1111 -> Esperado: 1111";
        a <= "1111";
        sh_ctrl <= "00";
        wait for 10 ns;
        
        report "  Resultado obtenido: " & slv_to_string(s);
        if s = "1111" then
            report "  CORRECTO: Pass through funcionando";
        else
            report "  ERROR: Esperado 1111, obtenido " & slv_to_string(s);
        end if;
        
        wait for 10 ns;

        ------------------------------------------------------------
        -- Prueba 2: Shift Right con 0 (sh_ctrl = "01")
        ------------------------------------------------------------
        report "Prueba 2: Shift Right con 0 (sh_ctrl = 01)";
        report "  Entrada: 1101 -> Esperado: 0110";
        report "  Explicacion: 1101 >> 1 con 0 = 0110";
        a <= "1101";
        sh_ctrl <= "01";
        wait for 10 ns;
        
        report "  Resultado obtenido: " & slv_to_string(s);
        if s = "0110" then
            report "  CORRECTO: Shift Right con 0 funcionando";
        else
            report "  ERROR: Esperado 0110, obtenido " & slv_to_string(s);
        end if;
        
        wait for 10 ns;
		  
        ------------------------------------------------------------
        -- Prueba 3: Shift Left con 0 (sh_ctrl = "10")
        ------------------------------------------------------------
        report "Prueba 3: Shift Left con 0 (sh_ctrl = 10)";
        report "  Entrada: 1001 -> Esperado: 0010";
        report "  Explicacion: 1001 << 1 con 0 = 0010";
        a <= "1001";
        sh_ctrl <= "10";
        wait for 10 ns;
        
        report "  Resultado obtenido: " & slv_to_string(s);
        if s = "0010" then
            report "  CORRECTO: Shift Left con 0 funcionando";
        else
            report "  ERROR: Esperado 0010, obtenido " & slv_to_string(s);
        end if;
        
        wait for 10 ns;

        ------------------------------------------------------------
        -- Prueba 4: Rotate Right (sh_ctrl = "11")
        ------------------------------------------------------------
        report "Prueba 4: Rotate Right (sh_ctrl = 11)";
        report "  Entrada: 1010 -> Esperado: 0101";
        report "  Explicacion: Rotar derecha 1010 = 0101";
        a <= "1010";
        sh_ctrl <= "11";
        wait for 10 ns;
        
        report "  Resultado obtenido: " & slv_to_string(s);
        if s = "0101" then
            report "  CORRECTO: Rotate Right funcionando";
        else
            report "  ERROR: Esperado 0101, obtenido " & slv_to_string(s);
        end if;
        
        wait for 10 ns;
        
        ------------------------------------------------------------
        -- Prueba adicional para clarificar
        ------------------------------------------------------------
        report "Prueba adicional: Mostrando solo bits";
        report "--------------------------------------";
        
        -- Pass through
        a <= "0101";
        sh_ctrl <= "00";
        wait for 10 ns;
        report "  Pass through 0101 -> " & slv_to_string(s);
        
        -- Shift Right con 0
        a <= "0101";
        sh_ctrl <= "01";
        wait for 10 ns;
        report "  Shift Right 0101 -> " & slv_to_string(s);
        
        -- Shift Left con 0
        a <= "0101";
        sh_ctrl <= "10";
        wait for 10 ns;
        report "  Shift Left 0101 -> " & slv_to_string(s);
        
        -- Rotate Right
        a <= "0101";
        sh_ctrl <= "11";
        wait for 10 ns;
        report "  Rotate Right 0101 -> " & slv_to_string(s);
        
        wait for 10 ns;
        
        report "========================================";
        report "RESUMEN DE OPERACIONES:";
        report "  00: Pass through (s = a)";
        report "  01: Shift Right (s = '0' & a(3:1))";
        report "  10: Shift Left (s = a(2:0) & '0')";
        report "  11: Rotate Right (s = a(0) & a(3:1))";
        report "========================================";
        report "PRUEBAS COMPLETADAS";
        report "========================================";

        wait;
    end process;

end architecture behavior;