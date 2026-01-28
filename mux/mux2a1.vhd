library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2a1 is
	Port (
		s : in  STD_LOGIC;
		a : in  STD_LOGIC_VECTOR(3 downto 0);
		b : in  STD_LOGIC_VECTOR(3 downto 0);
		y : out STD_LOGIC_VECTOR(3 downto 0)
	);
end mux2a1;

architecture Behavioral of mux2a1 is

begin

    process(a, b, s)
	 begin
		if (s = '1') then
			y <= a;
		else
			y <= b;
		end if;
	 end process;

end Behavioral;
