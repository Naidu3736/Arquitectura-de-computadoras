library ieee;
use ieee.std_logic_1164.all;

entity bitwise_and is
	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0)
	);
end bitwise_and;

architecture behavioral of bitwise_and is

begin

	s <= a and b;

end architecture behavioral;