library ieee;
use ieee.std_logic_1164.all;

entity shifter is
	port (
        sh_ctrl : in  std_logic_vector(1 downto 0);
        a       : in  std_logic_vector(3 downto 0);
        s       : out std_logic_vector(3 downto 0)
    );
end shifter;

architecture structural of shifter is

begin

   process(a, sh_ctrl)
    begin
        case sh_ctrl is
            -- 1. Pass through
            when "00" =>
                s <= a;
            
            -- 2. Shift Right con 0 
            when "01" =>
                s <= a(2 downto 0) & '0';
                
            -- 3. Shift Left con 0 
            when "10" =>
                s <= '0' & a(3 downto 1);
                
            -- 4. Rotate Right
            when "11" =>
                s <= a(0) & a(3 downto 1);

            when others =>
                s <= (others => '0');
        end case;
    end process;

end architecture structural;