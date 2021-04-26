LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY serial_adder IS
	PORT (
		clk, clear_dp: IN STD_LOGIC;
		in_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		in_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		control : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		sum : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		carry : OUT STD_LOGIC);
END serial_adder;

ARCHITECTURE structural OF serial_adder IS

	COMPONENT shiftreg --shift register
		PORT (
			Clk, Clr, SL, SR, S1, S0 : IN STD_LOGIC;
			P : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;

	COMPONENT and2 --two input and gate
		PORT (
			A,B : IN STD_LOGIC;
			Y : OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT inverter --one input inverter
		PORT (
			A : IN STD_LOGIC;
			Y : OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT adder --one bit adder
		PORT( a, b, cin : in  STD_LOGIC;
              sum, cout : out STD_LOGIC );
	END COMPONENT;

	COMPONENT dff --d flip flop
		PORT(
      Q : out std_logic;    
      Clk :in std_logic;   
      Clear: in std_logic;
      Enable: in std_logic;
      D :in  std_logic    
   );
	END COMPONENT;
	
	signal fa_sum : std_logic := '0';
	signal fa_co : std_logic := '0';
	signal regA_out : std_logic_vector(3 DOWNTO 0) := "0000";
	signal regB_out : std_logic_vector(3 DOWNTO 0) := "0000";
	signal dff_out : std_logic := '0';
	signal clear_inverted :std_logic := '0';
	signal enable : std_logic := '0';


BEGIN
	FA_1 : adder
		PORT MAP(a => regB_out(0), b => regA_out(0), cin => dff_out, sum => fa_sum, cout => fa_co);
	regA : shiftreg
		PORT MAP(Clk => clk, Clr => clear_dp, SL => '0', SR => fa_sum, S0 => control(0), S1 => control(1), P => in_a, Q => regA_out);
	regB : shiftreg
		PORT MAP(Clk => clk, Clr => clear_dp, S0 => control(0), SR => '0',SL => '0', S1 => control(1), P => in_b, Q => regB_out);
	
	DFF_1 : dff
		PORT MAP(Clk => clk, Clear => clear_dp, Enable => enable, D => fa_co, Q => dff_out);
	and_1 : and2
		PORT MAP(A => Control(0), B => clear_inverted, Y => enable);
	inverter_1 : inverter
		PORT MAP(A => Control(1), Y => clear_inverted);
	
	sum <= regA_out;
	carry <= dff_out;
	
END structural;

