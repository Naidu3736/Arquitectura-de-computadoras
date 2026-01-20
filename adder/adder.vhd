library ieee;
use ieee.std_logic_1164.all;

entity adder is
	port (
		a : in std_logic_vector(3 downto 0);
		b : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		c : out std_logic
	);
end adder;

architecture structural of adder is

	component full_adder
		port (
			a : in std_logic;
			b : in std_logic;
			cin : in std_logic;
			s : out std_logic;
			cout : out std_logic
		);
	end component;
	
	signal carry : std_logic_vector(2 downto 0);

begin

	U0 : full_adder
	  port map (
			a => a(0),
			b => b(0),
			cin => '0',
			s => s(0),
			cout => carry(0)
	  );
	  
	U1 : full_adder
	  port map (
			a => a(1),
			b => b(1),
			cin => carry(0),
			s => s(1),
			cout => carry(1)
	  );

	U2 : full_adder
	  port map (
			a => a(2),
			b => b(2),
			cin => carry(1),
			s => s(2),
			cout => carry(2)
	  );
	  
	U3 : full_adder
	  port map (
			a => a(3),
			b => b(3),
			cin => carry(2),
			s => s(3),
			cout => c
	  );

end architecture structural;