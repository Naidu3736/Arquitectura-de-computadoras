library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
    port (
        clk   : in std_logic;
        wd    : in std_logic_vector(3 downto 0);
        we    : in std_logic;
        wa    : in std_logic_vector(1 downto 0);
        
        rae   : in std_logic;
        raa   : in std_logic_vector(1 downto 0);
        
        rbe   : in std_logic;
        rba   : in std_logic_vector(1 downto 0);

        aout  : out std_logic_vector(3 downto 0);
        bout  : out std_logic_vector(3 downto 0)
    );
end register_file;

architecture behavioral of register_file is
    type reg_array is array (0 to 3) of 
         std_logic_vector(3 downto 0);
    signal registers : reg_array := (others => (others => '0'));
    
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if we = '1' then
                registers(to_integer(unsigned(wa))) <= wd;
            end if;
        end if;
    end process;
    
    process(rae, raa, registers)
    begin
        if rae = '1' then
            aout <= registers(to_integer(unsigned(raa)));
        else
            aout <= (others => 'Z');
        end if;
    end process;
    
    process(rbe, rba, registers)
    begin
        if rbe = '1' then
            bout <= registers(to_integer(unsigned(rba)));
        else
            bout <= (others => 'Z');
        end if;
    end process;
    
end behavioral;