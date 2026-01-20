library ieee;
use ieee.std_logic_1164.all;

entity subtractor is
	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		c : out std_logic
	);
end subtractor;


architecture structural of subtractor is
	component full_subtractor is
		port (
			a : in std_logic;
			b : in std_logic;
			cin : in std_logic;
			s : out std_logic;
			cout : out std_logic
		);
	end component;

	signal borrow : std_logic_vector(2 downto 0);

begin

	U0 : full_subtractor
		port map (
			a => a(0),
			b => b(0),
			cin => '0',
			s => s(0),
			cout => borrow(0)
		);
		
	U1 : full_subtractor
		port map (
			a => a(1),
			b => b(1),
			cin => borrow(0),
			s => s(1),
			cout => borrow(1)
		);
		
	U2 : full_subtractor
		port map (
			a => a(2),
			b => b(2),
			cin => borrow(1),
			s => s(2),
			cout => borrow(2)
		);
		
	U3 : full_subtractor
		port map (
			a => a(3),
			b => b(3),
			cin => borrow(2),
			s => s(3),
			cout => c
		);

end architecture structural;