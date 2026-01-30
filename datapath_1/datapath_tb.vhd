library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity datapath_tb is
end datapath_tb;

architecture testbench of datapath_tb is
    component datapath
        port (
            clk : in std_logic;
            input : in std_logic_vector(3 downto 0);
            ie : in std_logic;
            we : in std_logic;
            wa : in std_logic_vector(1 downto 0);
            rae : in std_logic;
            raa : in std_logic_vector(1 downto 0);
            rbe : in std_logic;
            rba : in std_logic_vector(1 downto 0);
            alu_ctrl : in std_logic_vector(2 downto 0);
            sh_ctrl : in std_logic_vector(1 downto 0);
            oe : in std_logic;
            output : out std_logic_vector(3 downto 0)
        );
    end component;
    
    signal clk : std_logic := '0';
    signal input : std_logic_vector(3 downto 0);
    signal ie, we, rae, rbe, oe : std_logic;
    signal wa, raa, rba : std_logic_vector(1 downto 0);
    signal alu_ctrl : std_logic_vector(2 downto 0);
    signal sh_ctrl : std_logic_vector(1 downto 0);
    signal output : std_logic_vector(3 downto 0);
    
    constant CLK_PERIOD : time := 10 ns;
    
    -- Señal para controlar cuando terminar
    signal sim_finished : boolean := false;
    
begin

    uut: datapath
        port map (
            clk => clk,
            input => input,
            ie => ie,
            we => we,
            wa => wa,
            rae => rae,
            raa => raa,
            rbe => rbe,
            rba => rba,
            alu_ctrl => alu_ctrl,
            sh_ctrl => sh_ctrl,
            oe => oe,
            output => output
        );
    
    -- Proceso del reloj independiente
    clk_process: process
    begin
        while not sim_finished loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;
    
    -- Proceso principal de estímulos
    stimulus: process
        variable n_val : integer := 5;    -- Multiplicando
        variable m_val : integer := 3;    -- Multiplicador
        variable m_temp : integer;        -- Para leer m
        variable r_temp : integer;        -- Para leer resultado
        variable estado : integer := 0;   -- Para controlar estados
    begin
        
        -- Inicializar todas las señales
        input <= "0000";
        ie <= '0';
        we <= '0';
        wa <= "00";
        rae <= '0';
        raa <= "00";
        rbe <= '0';
        rba <= "00";
        alu_ctrl <= "000";
        sh_ctrl <= "00";
        oe <= '0';
        m_temp := m_val;
        
        wait for CLK_PERIOD;
        
        -- PASO 1: Cargar n = 5 en R0
        input <= std_logic_vector(to_unsigned(n_val, 4));
        ie <= '1';           -- Usar input externo
        we <= '1';           -- Habilitar escritura
        wa <= "00";          -- Escribir en R0
        alu_ctrl <= "000";   -- Identidad (pasa el input)
        wait for CLK_PERIOD;
        we <= '0';
        ie <= '0';
        wait for CLK_PERIOD;
        
        -- PASO 2: Cargar m = 3 en R1
        input <= std_logic_vector(to_unsigned(m_val, 4));
        ie <= '1';
        we <= '1';
        wa <= "01";          -- Escribir en R1
        alu_ctrl <= "000";   -- Identidad
        wait for CLK_PERIOD;
        we <= '0';
        ie <= '0';
        wait for CLK_PERIOD;
        
        -- PASO 3: Inicializar r = 0 en R2
        input <= "0000";
        ie <= '1';
        we <= '1';
        wa <= "10";          -- Escribir en R2
        alu_ctrl <= "000";   -- Identidad
        wait for CLK_PERIOD;
        we <= '0';
        ie <= '0';
        wait for CLK_PERIOD;
        
        -- Inicializar m_temp con el valor actual de m
        -- Leer m desde R1
        rae <= '1';
        raa <= "01";     -- Leer R1 (m)
        oe <= '1';       -- Habilitar salida
        wait for CLK_PERIOD;
        m_temp := to_integer(unsigned(output));  -- Leer valor de m
        rae <= '0';
        oe <= '0';
        wait for CLK_PERIOD;
        
        -- BUCLE: while (m > 0)
        while m_temp > 0 loop
            
            -- PASO 4: r = r + n (acumular)
            -- Leer n desde R0 y r desde R2
            we <= '1';
            wa <= "10";   
            rae <= '1';
            raa <= "00";     -- Leer R0 (n)
            rbe <= '1';
            rba <= "10";     -- Leer R2 (r)
            alu_ctrl <= "001";  -- SUMA (r + n)
				oe <= '1';
            wait for CLK_PERIOD;
            
            -- PASO 5: m = m - 1 (decrementar contador)
            -- Leer m desde R1
            we <= '1';
            wa <= "01";      -- Escribir en R1				
            rae <= '1';
            raa <= "01";     -- Leer R1 (m)
            alu_ctrl <= "100";  -- m - 1
				oe <= '1';
            wait for CLK_PERIOD;
            
            -- Leer el nuevo valor de m para la condición del bucle
            rae <= '1';
            raa <= "01";     -- Leer R1 (m)
            oe <= '1';       -- Habilitar salida
				m_temp := to_integer(unsigned(output));
            wait for CLK_PERIOD;
            
        end loop;
        
        -- PASO 6: Mostrar resultado final
        -- Leer resultado desde R2
        rae <= '1';
        raa <= "10";         -- Leer R2
        oe <= '1';           -- Habilitar salida
        wait for 2*CLK_PERIOD;
        
        -- Leer el resultado final
        r_temp := to_integer(unsigned(output));
        
        -- Esperar un poco más para visualizar en la simulación
        wait for 3*CLK_PERIOD;
        
        oe <= '0';
        rae <= '0';
        
        -- Terminar simulación
        sim_finished <= true;
        wait;
        
    end process;
    
end testbench;