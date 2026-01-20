library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor is
	port (
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		s : out std_logic;
		cout : out std_logic
	);
end full_subtractor;

architecture behavioral of full_subtractor is

begin

	s <= a xor b xor cin;
	cout <= ((not a) and b) or ((not a) and cin) or (b and cin);

end architecture behavioral;