library ieee;
use ieee.std_logic_1164.all;

entity decrementer is
	port (
		a : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		c : out std_logic
	);
end decrementer;

architecture structural of decrementer is
	component subtractor is
		port (
			a : in std_logic_vector(3 downto 0);
			b : in std_logic_vector(3 downto 0);
			s : out std_logic_vector(3 downto 0);
			c : out std_logic
		);
	end component;

begin

	U0 : subtractor 
		port map (
			a => a,
			b => "0001", 
			s => s,
			c => c
		);

end architecture structural;