library ieee;
use ieee.std_logic_1164.all;

entity tb_shifter is
end tb_shifter;

architecture behavior of tb_shifter is

   
    signal a       : std_logic_vector(3 downto 0) := (others => '0');
	 
    signal sh_ctrl : std_logic_vector(1 downto 0) := (others => '0');

    signal s       : std_logic_vector(3 downto 0);

   
    component shifter is
        port (
            sh_ctrl : in  std_logic_vector(1 downto 0);
            a       : in  std_logic_vector(3 downto 0);
            s       : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    
    UUT : shifter
        port map (
            sh_ctrl => sh_ctrl,
            a       => a,
            s       => s
        );

   
    stim_proc: process
    begin
 
        wait for 10 ns;

         ------------------------------------------------------------
        -- 1. Prueba: Shift Left with 0
        -- Entrada: 1111 -> Esperado: 1110 
        ------------------------------------------------------------
        a <= "1111";
        sh_ctrl <= "00";
        wait for 10 ns;

        ------------------------------------------------------------
        -- 2. Prueba: Shift Right with 0
        -- Entrada: 1101 -> Esperado: 0110 
        ------------------------------------------------------------
        a <= "1101";
        sh_ctrl <= "01";
        wait for 10 ns;
		  
   ------------------------------------------------------------
        -- 3. Prueba: Rotate Right 
        -- Entrada: 1001 -> Esperado: 1100 
        ------------------------------------------------------------

        a <= "1001";
        sh_ctrl <= "10";
        wait for 10 ns;

        ------------------------------------------------------------
        -- 4. Prueba: Pass throug 
        -- Entrada: 1010 -> Esperado: 1010 
        ------------------------------------------------------------
        a <= "1010";
        sh_ctrl <= "11";
        wait for 10 ns;

        wait;
    end process;

end architecture behavior;