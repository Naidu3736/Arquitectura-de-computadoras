-- File: decrementer_tb.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decrementer_tb is
end entity decrementer_tb;

architecture testbench of decrementer_tb is
    
    component decrementer
        port (
            a : in std_logic_vector(3 downto 0);
            s : out std_logic_vector(3 downto 0);
            c : out std_logic
        );
    end component;
    
    signal a, s : std_logic_vector(3 downto 0);
    signal c : std_logic;
    
    signal sim_done : boolean := false;
    
begin
    UUT: decrementer
        port map (a => a, s => s, c => c);
    
    -- Stimulus process
    stimulus: process
        variable error_count : integer := 0;
        variable expected : std_logic_vector(4 downto 0);
    begin
--        wait for 100 ns;
        
        -- Test all values from 0 to 15
        for i in 0 to 15 loop
            a <= std_logic_vector(to_unsigned(i, 4));
            
            wait for 10 ns;
            
            -- Check result: a - 1
            if i = 0 then
                expected := "10000";  -- 0-1 = -1 (con borrow)
            else
                expected := std_logic_vector(to_unsigned(i - 1, 5));
            end if;
            
            if (c & s) /= expected then
                error_count := error_count + 1;
                assert false
                    report "Error: a=" & integer'image(i) & 
                           ", got s=" & integer'image(to_integer(unsigned(s))) &
                           ", c=" & std_logic'image(c) &
                           ", expected=" & integer'image(to_integer(unsigned(expected)))
                    severity error;
            end if;
            
            wait for 10 ns;
        end loop;
        
        -- Final report
        assert false
            report "Decrementer test complete. Errors: " & integer'image(error_count)
            severity note;
        
        sim_done <= true;
        wait;
    end process;
    
end architecture testbench;