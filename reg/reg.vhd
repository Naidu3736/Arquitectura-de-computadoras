library ieee;
use ieee.std_logic_1164.all;

entity reg is
	port (
		clk : in std_logic;
		clear : in std_logic;
		load : in std_logic;
		d : in std_logic_vector(3 downto 0);
		q : out std_logic_vector(3 downto 0)
	);
end reg;

architecture behavioral of reg is


begin

	process (clk, clear)
	begin
		if clear = '1' then
			q <= (others => '0');
		elsif rising_edge(clk) then
			if load = '1' then
				q <= d;
			end if;
		end if;
	end process;
	
end behavioral;