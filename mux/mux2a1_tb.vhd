library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2a1_tb is
end mux2a1_tb;

architecture tb of mux2a1_tb is

    signal A : STD_LOGIC_VECTOR(7 downto 0);
    signal B : STD_LOGIC_VECTOR(7 downto 0);
    signal S : STD_LOGIC;
    signal Y : STD_LOGIC_VECTOR(7 downto 0);

begin

    UUT: entity work.mux2a1
        port map (
            A => A,
            B => B,
            S => S,
            Y => Y
        );

    stimulus: process
    begin
        -- S = 0 → Y = A
        A <= "00001111";
        B <= "11110000";
        S <= '0';
        wait for 10 ns;

        -- S = 1 → Y = B
        S <= '1';
        wait for 10 ns;

        -- Cambiamos valores
        A <= "10101010";
        B <= "01010101";
        wait for 100 ns;

        S <= '0';
        wait for 100 ns;

        S <= '1';
        wait for 100 ns;

        wait;
    end process;

end tb;
