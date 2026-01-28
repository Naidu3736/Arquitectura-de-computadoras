-- File: incrementer_tb.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity incrementer_tb is
end entity incrementer_tb;

architecture testbench of incrementer_tb is
    constant CLK_PERIOD : time := 10 ns;
    
    component incrementer
        port (
            a : in std_logic_vector(3 downto 0);
            s : out std_logic_vector(3 downto 0);
            c : out std_logic
        );
    end component;
    
    signal clk : std_logic := '0';
    signal a, s : std_logic_vector(3 downto 0);
    signal c : std_logic;
    
    signal sim_done : boolean := false;
    
begin
    UUT: incrementer
        port map (a => a, s => s, c => c);
    
    -- Clock process
    clk_process: process
    begin
        while not sim_done loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;
    
    -- Stimulus process
    stimulus: process
        variable error_count : integer := 0;
        variable expected : std_logic_vector(4 downto 0);
    begin
--        wait for 100 ns;
        
        -- Test all values from 0 to 15
        for i in 0 to 15 loop
            a <= std_logic_vector(to_unsigned(i, 4));
            
            wait until rising_edge(clk);
            wait for CLK_PERIOD/4;
            
            -- Check result: a + 1
            expected := std_logic_vector(to_unsigned(i + 1, 5));
            
            if (c & s) /= expected then
                error_count := error_count + 1;
                assert false
                    report "Error: a=" & integer'image(i) & 
                           ", got s=" & integer'image(to_integer(unsigned(s))) &
                           ", c=" & std_logic'image(c) &
                           ", expected=" & integer'image(to_integer(unsigned(expected)))
                    severity error;
            end if;
            
            wait until rising_edge(clk);
        end loop;
        
        -- Final report
        assert false
            report "Incrementer test complete. Errors: " & integer'image(error_count)
            severity note;
        
        sim_done <= true;
        wait;
    end process;
    
end architecture testbench;