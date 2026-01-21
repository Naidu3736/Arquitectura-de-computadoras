library ieee;
use ieee.std_logic_1164.all;

entity bitwise_not is
	port (
		a : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0)
	);
end bitwise_not;

architecture behavioral of bitwise_not is

begin

	s <= not a;

end architecture behavioral;