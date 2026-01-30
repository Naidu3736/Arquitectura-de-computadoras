library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2a1_tb is
end mux2a1_tb;

architecture testbench of mux2a1_tb is

    signal A : STD_LOGIC_VECTOR(3 downto 0);
    signal B : STD_LOGIC_VECTOR(3 downto 0);
    signal S : STD_LOGIC;
    signal Y : STD_LOGIC_VECTOR(3 downto 0);

begin

    UUT: entity work.mux2a1
        port map (
				s => S,
            a => A,
            b => B,
            y => Y
        );

    stimulus: process
    begin
        -- S = 0 → Y = A
        A <= "0011";
        B <= "1100";
        S <= '0';
        wait for 10 ns;

        -- S = 1 → Y = B
        S <= '1';
        wait for 10 ns;

        -- Cambiamos valores
        A <= "1010";
        B <= "0101";
        wait for 10 ns;

        S <= '0';
        wait for 10 ns;

        S <= '1';
        wait for 10 ns;

        wait;
    end process;

end testbench;
