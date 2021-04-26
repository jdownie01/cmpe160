LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY serial_adder_state_machine IS
	PORT (
		clk, start, clear_sm: IN STD_LOGIC;
		inA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		inB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		sum : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		ready,cout : OUT std_logic_vector);
END serial_adder_state_machine;

ARCHITECTURE structural OF serial_adder_state_machine IS

	COMPONENT serial_adder --shift register
		PORT (
		clk, clear_dp: IN STD_LOGIC;
		in_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		in_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		control : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		sum : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		carry : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT control_unit
	PORT (
		start : IN std_logic;
		clk : IN std_logic;
		clear_sm : IN std_logic;
		ready : OUT std_logic;
		control_output : OUT std_logic_vector(3 DOWNTO 0)
	);
	END COMPONENT;
	
	SIGNAL control_s : std_logic_vector(1 downto 0) := "11";
BEGIN
	SA_1 : serial_adder
		PORT MAP(clk=>clk, in_a => inA, in_b => inB, sum => sum, carry => cout, control=> control_s, clear_dp => clear_sm);
	CU_1 : control
		PORT MAP(clk=>clk, start => start, ready=> ready, clear_sm => clear_sm);
	
	PROCESS (clk, start)
		if (start = '1') then
			control_s = "01"
		else 
			control_s = "11";
		end if
	

END structural;

