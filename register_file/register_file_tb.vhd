-- File: register_file_tb_working.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file_tb is
end entity register_file_tb;

architecture testbench of register_file_tb is
    constant CLK_PERIOD : time := 10 ns;
    
    component register_file
        port (
            clk : in std_logic;
            we : in std_logic;
            wa : in std_logic_vector(1 downto 0);
            wd : in std_logic_vector(3 downto 0);
            rae : in std_logic;
            raa : in std_logic_vector(1 downto 0);
            aout : out std_logic_vector(3 downto 0);
            rbe : in std_logic;
            rba : in std_logic_vector(1 downto 0);
            bout : out std_logic_vector(3 downto 0)
        );
    end component;
    
    signal clk : std_logic := '0';
    signal we, rae, rbe : std_logic;
    signal wa, raa, rba : std_logic_vector(1 downto 0);
    signal wd, aout, bout : std_logic_vector(3 downto 0);
    
begin
    UUT: register_file
        port map (
            clk => clk,
            we => we,
            wa => wa,
            wd => wd,
            rae => rae,
            raa => raa,
            aout => aout,
            rbe => rbe,
            rba => rba,
            bout => bout
        );
    
    -- Clock process simple
    process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;
    
    -- Main test
    process
        variable error_count : integer := 0;
        variable test_count : integer := 0;
        type reg_array is array (0 to 3) of std_logic_vector(3 downto 0);
        variable registers : reg_array := (others => (others => '0'));
    begin
        -- Inicializar
        we <= '0';
        rae <= '1';
        rbe <= '1';
        wa <= "00";
        wd <= "0000";
        raa <= "00";
        rba <= "00";
        
--        wait for 100 ns;
        
        report "Testing register file..." severity note;
        
        -- Probar escritura y lectura básica
        for reg in 0 to 3 loop
            for val in 0 to 15 loop
                -- Escribir
                we <= '1';
                wa <= std_logic_vector(to_unsigned(reg, 2));
                wd <= std_logic_vector(to_unsigned(val, 4));
                wait until rising_edge(clk);
                
                -- Actualizar modelo
                registers(reg) := std_logic_vector(to_unsigned(val, 4));
                
                -- Leer
                we <= '0';
                raa <= std_logic_vector(to_unsigned(reg, 2));
                rba <= std_logic_vector(to_unsigned(reg, 2));
                wait for CLK_PERIOD/4;
                
                test_count := test_count + 1;
                
                -- Verificar
                if aout /= registers(reg) then
                    error_count := error_count + 1;
                    report "Error: Reg " & integer'image(reg) & 
                           " should be " & integer'image(val) &
                           ", got " & integer'image(to_integer(unsigned(aout)))
                        severity error;
                end if;
                
                if bout /= registers(reg) then
                    error_count := error_count + 1;
                    report "Error port B: Reg " & integer'image(reg) & 
                           " should be " & integer'image(val) &
                           ", got " & integer'image(to_integer(unsigned(bout)))
                        severity error;
                end if;
                
                wait until rising_edge(clk);
            end loop;
        end loop;
        
        -- Probar lecturas independientes
        report "Testing independent reads..." severity note;
        
        -- Escribir valores conocidos
        for i in 0 to 3 loop
            we <= '1';
            wa <= std_logic_vector(to_unsigned(i, 2));
            wd <= std_logic_vector(to_unsigned(i * 3 + 1, 4));
            registers(i) := std_logic_vector(to_unsigned(i * 3 + 1, 4));
            wait until rising_edge(clk);
        end loop;
        we <= '0';
        
        -- Probar todas las combinaciones de lectura
        for ra in 0 to 3 loop
            for rb in 0 to 3 loop
                raa <= std_logic_vector(to_unsigned(ra, 2));
                rba <= std_logic_vector(to_unsigned(rb, 2));
                wait for CLK_PERIOD/4;
                
                test_count := test_count + 1;
                
                if aout /= registers(ra) then
                    error_count := error_count + 1;
                    report "Error reading reg " & integer'image(ra) & 
                           " on port A" severity error;
                end if;
                
                if bout /= registers(rb) then
                    error_count := error_count + 1;
                    report "Error reading reg " & integer'image(rb) & 
                           " on port B" severity error;
                end if;
                
                wait until rising_edge(clk);
            end loop;
        end loop;
        
        -- Reporte final
        report "========================================" severity note;
        report "Test complete" severity note;
        report "Total tests: " & integer'image(test_count) severity note;
        report "Total errors: " & integer'image(error_count) severity note;
        
        if error_count = 0 then
            report "SUCCESS!" severity note;
        else
            report "FAILURE" severity error;
        end if;
        report "========================================" severity note;
        
        wait;
    end process;
    
end architecture testbench;