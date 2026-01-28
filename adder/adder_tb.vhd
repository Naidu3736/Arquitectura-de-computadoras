library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_tb is
end entity adder_tb;

architecture testbench of adder_tb is
    
    component adder
        port (
            a   : in std_logic_vector(3 downto 0);
            b   : in std_logic_vector(3 downto 0);
            s   : out std_logic_vector(3 downto 0);
            c   : out std_logic
        );
    end component;
    
    signal a   : std_logic_vector(3 downto 0) := (others => '0');
    signal b   : std_logic_vector(3 downto 0) := (others => '0');
    signal s   : std_logic_vector(3 downto 0);
    signal c   : std_logic;
    
    signal sim_done : boolean := false;
    
begin
	UUT: adder
	  port map 
	  (
		a => a, 
		b => b, 
		s => s, 
		c => c
		);


	stimulus: process
	  variable error_count : integer := 0;
	begin
	  
		for i in 0 to 15 loop
			for j in 0 to 15 loop
				 a <= std_logic_vector(to_unsigned(i, 4));
				 b <= std_logic_vector(to_unsigned(j, 4));
				 
				 wait for 10 ns;
				 
				 if (c & s) /= std_logic_vector(resize(unsigned(a), 5) + 
														  resize(unsigned(b), 5)) then
					  error_count := error_count + 1;
					  assert false
							report "Error: a=" & integer'image(i) & 
									 ", b=" & integer'image(j) & 
									 ", got s=" & integer'image(to_integer(unsigned(s))) &
									 ", c=" & std_logic'image(c)
							severity error;
				 end if;
				 
				 wait for 10 ns;
			end loop;
		end loop;

		assert false
			report "Simulation complete. Errors: " & integer'image(error_count)
			severity note;

		sim_done <= true;
		wait;
	end process;
 
end architecture testbench;