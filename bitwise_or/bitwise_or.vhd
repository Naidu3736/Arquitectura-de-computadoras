library ieee;
use ieee.std_logic_1164.all;

entity bitwise_or is
	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0)
	);
end bitwise_or;

architecture behavioral of bitwise_or is

begin

	s <= a or b;

end architecture behavioral;
