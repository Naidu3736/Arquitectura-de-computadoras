library ieee;
use ieee.std_logic_1164.all;

entity datapath is
	port (
		clk : in std_logic;
	
		input: in std_logic_vector(3 downto 0);
		ie : in std_logic;
		
		alu_ctrl : in std_logic_vector(2 downto 0);
		
		load : in std_logic;
		clear : in std_logic;

		oe : in std_logic;
		
		output : out std_logic_vector(3 downto 0)
	);
end datapath;

architecture structural of datapath is
	component mux2a1 
		Port (
			s : in  STD_LOGIC;
			a : in  STD_LOGIC_VECTOR(3 downto 0);
			b : in  STD_LOGIC_VECTOR(3 downto 0);
			y : out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;
	
	component alu 
		port (
			a : in std_logic_vector(3 downto 0);
			b : in std_logic_vector(3 downto 0);
			alu_ctrl : in std_logic_vector(2 downto 0);
			s : out std_logic_vector(3 downto 0)
		);
	end component;
	
	component reg 
		port (
			clk : in std_logic;
			clear : in std_logic;
			load : in std_logic;
			d : in std_logic_vector(3 downto 0);
			q : out std_logic_vector(3 downto 0)
		);
	end component;
	
	component tri_state_buffer
		port (
			e : in std_logic;
			d : in std_logic_vector(3 downto 0);
			s : out std_logic_vector(3 downto 0)
		);
	end component;
	
	signal mux_out     : std_logic_vector(3 downto 0);
	signal alu_out     : std_logic_vector(3 downto 0);
	signal reg_out : std_logic_vector(3 downto 0);
	signal tri_state_out : std_logic_vector(3 downto 0);

begin

	U_MUX : mux2a1
		port map (
			s => ie,
			a => input,
			b => (others => '1'),
			y => mux_out
		);
		
	U_ALU : alu
		port map (
			a => mux_out,
			b => reg_out,
			alu_ctrl => alu_ctrl,
			s => alu_out
		);
		
	U_REG : reg
		port map (
			clk => clk,
			clear => clear,
			load => load,
			d => alu_out,
			q => reg_out
		);
		
	U_TRI_STATE : tri_state_buffer
		port map (
			e => oe,
			d => reg_out,
			s => tri_state_out
		);
		
	output <= tri_state_out;

end structural;