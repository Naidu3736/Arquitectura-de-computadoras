library ieee;
use ieee.std_logic_1164.all;

entity datapath is
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
	
	component register_file
		port (
			clk : in std_logic;
			wd : in std_logic_vector(3 downto 0);
			we : in std_logic;
			wa : in std_logic_vector(1 downto 0);
			
			rae : in std_logic;
			raa : in std_logic_vector(1 downto 0);
			
			rbe : in std_logic;
			rba : in std_logic_vector(1 downto 0);
			
			aout : out std_logic_vector(3 downto 0);
			bout : out std_logic_vector(3 downto 0)
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
	
	component shifter
		port (
			sh_ctrl : in std_logic_vector(1 downto 0);
			a : in std_logic_vector(3 downto 0);
			s : out	 std_logic_vector(3 downto 0)
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
	signal rf_aout     : std_logic_vector(3 downto 0);
	signal rf_bout     : std_logic_vector(3 downto 0);
	signal alu_out     : std_logic_vector(3 downto 0);
	signal shifter_out : std_logic_vector(3 downto 0);
	signal tri_state_out : std_logic_vector(3 downto 0);

begin 

	U0 : mux2a1
		port map (
			s => ie,
			a => input,
			b => shifter_out,
			y => mux_out
		);
	
	u1 : register_file
		port map (
			clk => clk,
			wd => mux_out,
			we => we,
			wa => wa,
			rae => rae,
			raa => raa,
			rbe => rbe,
			rba => rba,
			aout => rf_aout,
			bout => rf_bout
		);
		
	U2 : alu 
		port map (
			a => rf_aout,
			b => rf_bout,
			alu_ctrl => alu_ctrl,
			s => alu_out
		);
	
	U3 : shifter
		port map (
			sh_ctrl => sh_ctrl,
			a => alu_out,
			s => shifter_out
		);
	
	U4 : tri_state_buffer
		port map (
			e => oe,
			d => shifter_out,
			s => tri_state_out
		);
		
	output <= tri_state_out;
		
end structural;