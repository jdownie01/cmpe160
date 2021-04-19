LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ctrlunit IS
	PORT (
		start : IN std_logic;
		clk : IN std_logic;
		clear_sm : IN std_logic;
		control_output : OUT std_logic_vector(3 DOWNTO 0)
	);
END ctrlunit;

ARCHITECTURE behaviorial OF ctrlunit IS
	TYPE state IS
	(a, b, c, d);
	SIGNAL state, next_state : state;

	SIGNAL counter : INTEGER;
	CONSTANT IDLE : std_logic_vector(3 DOWNTO 0) := "1100";
	CONSTANT RESET : std_logic_vector(3 DOWNTO 0) := "0000";
	CONSTANT LOAD : std_logic_vector(3 DOWNTO 0) := "0111";
	CONSTANT S1 : std_logic_vector(3 DOWNTO 0) := "0101";
	CONSTANT S2 : std_logic_vector(3 DOWNTO 0) := "0101";
	CONSTANT S3 : std_logic_vector(3 DOWNTO 0) := "0101";
	CONSTANT S4 : std_logic_vector(3 DOWNTO 0) := "0101";
	CONSTANT HOLD : std_logic_vector(3 DOWNTO 0) := "0100";
BEGIN
	PROCESS (state, clk)
	BEGIN
		next_state <= state;
		CASE state IS
			WHEN IDLE => --idle
				IF start = '1' THEN
					next_state <= RESET;
				END IF;
			WHEN RESET => --reset
				next_state <= LOAD;
			WHEN LOAD => --load
				next_state <= S1;
			WHEN S1 => -- Count until hold
				next_state <= S2;
			WHEN S2 => -- Count until hold
				next_state <= S3;
			WHEN S3 => -- Count until hold
				next_state <= S4;
			WHEN S4 => -- Count until hold
				next_state <= HOLD;
			WHEN HOLD => --hold
				next_state <= IDLE;
		END CASE;
	END PROCESS;
END;
