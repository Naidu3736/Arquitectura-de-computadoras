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
            alu_ctrl : in std_logic_vector(2 downto 0);
            load : in std_logic;
            clear : in std_logic;
            oe : in std_logic;
            output : out std_logic_vector(3 downto 0)
        );
    end component;
    
    -- Señales de prueba
    signal clk : std_logic := '0';
    signal input : std_logic_vector(3 downto 0);
    signal ie, load, clear, oe : std_logic;
    signal alu_ctrl : std_logic_vector(2 downto 0);
    signal output : std_logic_vector(3 downto 0);
    
    constant CLK_PERIOD : time := 10 ns;
    
begin
    uut: datapath
        port map (
            clk => clk,
            input => input,
            ie => ie,
            alu_ctrl => alu_ctrl,
            load => load,
            clear => clear,
            oe => oe,
            output => output
        );
    
    clk_process: process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;
    
    stim_proc: process
    begin
        -- Inicializar
        
        -- 1. CLEAR registro (acumulador = 0)
        clear <= '1';
        wait for CLK_PERIOD;
        clear <= '0';
        wait for CLK_PERIOD;
        
        -- Mostrar 0
        oe <= '1';
        wait for CLK_PERIOD;
        oe <= '0';
        wait for CLK_PERIOD;
        
        -- Sumar números 1 hasta  10
        for i in 1 to 16 loop
            -- Configurar número a sumar
            input <= "0001";
            ie <= '1';          -- Usar input
            alu_ctrl <= "001";  -- SUMA (a + b)
            load <= '1';
            wait for CLK_PERIOD;
            
            -- Mostrar acumulado parcial
            load <= '0';
            oe <= '1';
            wait for CLK_PERIOD;

            oe <= '0';
            wait for CLK_PERIOD;
        end loop;
        
        oe <= '1';
        wait for 2*CLK_PERIOD;
        wait;
    end process;
    
end testbench;