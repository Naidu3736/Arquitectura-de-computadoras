library ieee;
use ieee.std_logic_1164.all;

entity tri_state_buffer is	
	port (
		e : in std_logic;
		d : in std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0)
	);
end tri_state_buffer;

architecture behavioral of tri_state_buffer is

begin

	process(e, d)
	begin
		if (e = '1') then
			s <= d;
		else
			s <= (others => 'Z');
		end if;
	end process;

end behavioral;