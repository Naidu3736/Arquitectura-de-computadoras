library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2a1_tb is
end mux2a1_tb;

architecture testbench of mux2a1_tb is
	component mux2a1
		port (
			s : in std_logic;
			a : in std_logic_vector(3 downto 0);
			b : in std_logic_vector(3 downto 0);
			y : out std_logic_vector(3 downto 0)
		);
	end component;

    signal A : STD_LOGIC_VECTOR(3 downto 0);
    signal B : STD_LOGIC_VECTOR(3 downto 0);
    signal S : STD_LOGIC;
    signal Y : STD_LOGIC_VECTOR(3 downto 0);

begin

    UUT: mux2a1
        port map (
            s => S,
            a => A,
            b => B,
            y => Y
        );

    stimulus: process
    begin
        report "=== INICIANDO PRUEBA DEL MULTIPLEXOR 2:1 ===";
        
        -- Prueba 1: S = 0 → Y = B
        report "Prueba 1: S = 0 (deberia seleccionar A)";
        A <= "0011";  -- 3 decimal
        B <= "1100";  -- 12 decimal
        S <= '0';
        wait for 10 ns;
        
        report "  A = " & integer'image(conv_integer(A)) & 
               ", B = " & integer'image(conv_integer(B)) & 
               ", S = " & std_logic'image(S);
        report "  Y obtenido = " & integer'image(conv_integer(Y));
        
        if Y = B then
            report "  CORRECTO: Y = B";
        else
            report "  ERROR: Y deberia ser igual a B" severity error;
        end if;
        
        wait for 10 ns;
        
        -- Prueba 2: S = 1 → Y = A
        report "Prueba 2: S = 1 (deberia seleccionar B)";
        S <= '1';
        wait for 10 ns;
        
        report "  A = " & integer'image(conv_integer(A)) & 
               ", B = " & integer'image(conv_integer(B)) & 
               ", S = " & std_logic'image(S);
        report "  Y obtenido = " & integer'image(conv_integer(Y));
        
        if Y = A then
            report "  CORRECTO: Y = A";
        else
            report "  ERROR: Y deberia ser igual a A" severity error;
        end if;
        
        wait for 10 ns;
        
        -- Prueba 3: Cambiamos valores y S = 1
        report "Prueba 3: Nuevos valores con S = 1";
        A <= "1010";  -- 10 decimal
        B <= "0101";  -- 5 decimal
        wait for 10 ns;
        
        report "  A = " & integer'image(conv_integer(A)) & 
               ", B = " & integer'image(conv_integer(B)) & 
               ", S = " & std_logic'image(S);
        report "  Y obtenido = " & integer'image(conv_integer(Y));
        
        if Y = A then
            report "  CORRECTO: Y = A(1010 = 10)";
        else
            report "  ERROR: Y deberia ser igual a A" severity error;
        end if;
        
        wait for 10 ns;
        
        -- Prueba 4: Mismo valor con S = 0
        report "Prueba 4: Mismos valores con S = 0";
        S <= '0';
        wait for 10 ns;
        
        report "  A = " & integer'image(conv_integer(A)) & 
               ", B = " & integer'image(conv_integer(B)) & 
               ", S = " & std_logic'image(S);
        report "  Y obtenido = " & integer'image(conv_integer(Y));
        
        if Y = B then
            report "  CORRECTO: Y = B (0101 = 5)";
        else
            report "  ERROR: Y deberia ser igual a B" severity error;
        end if;
        
        wait for 10 ns;
        
        -- Prueba 5: Volver a S = 1
        report "Prueba 5: Volver a S = 1";
        S <= '1';
        wait for 10 ns;
        
        report "  A = " & integer'image(conv_integer(A)) & 
               ", B = " & integer'image(conv_integer(B)) & 
               ", S = " & std_logic'image(S);
        report "  Y obtenido = " & integer'image(conv_integer(Y));
        
        if Y =A then
            report "  CORRECTO: Y = A (1010 = 10)";
        else
            report "  ERROR: Y deberia ser igual a B" severity error;
        end if;
        
        wait for 10 ns;
        
        report "========================================";
        report "RESUMEN DE PRUEBAS:";
        report "Se probaron 5 casos diferentes del multiplexor.";
        report "Cada prueba verifico que:";
        report "  - Cuando S=1, Y = A";
        report "  - Cuando S=0, Y = B";
        report "========================================";
        report "PRUEBA COMPLETADA EXITOSAMENTE";
        report "========================================";
        
        wait;
    end process;

end testbench;