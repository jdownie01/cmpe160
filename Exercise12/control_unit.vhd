LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ctrlunit IS
	PORT (
		start : IN std_logic;
		clk : IN std_logic;
		clear_sm : IN std_logic;
		ready : OUT std_logic;
		control_output : OUT std_logic_vector(3 DOWNTO 0)
	);
END ctrlunit;

ARCHITECTURE behaviorial OF ctrlunit IS
	TYPE st IS
	(a, b, c, d);
	SIGNAL state : std_logic_vector(3 DOWNTO 0);

	SIGNAL counter : INTEGER;
	CONSTANT IDLE : std_logic_vector(3 DOWNTO 0) := "1100";
	CONSTANT RESET : std_logic_vector(3 DOWNTO 0) := "0000";
	CONSTANT LOAD : std_logic_vector(3 DOWNTO 0) := "0111";
	CONSTANT S : std_logic_vector(3 DOWNTO 0) := "0101";
	CONSTANT HOLD : std_logic_vector(3 DOWNTO 0) := "0100";
BEGIN
	PROCESS (clk, clear_sm)
	BEGIN
		IF clear_sm = '1' THEN
			state <= IDLE;
			counter <= 0;
			ready <= '0';
		ELSE
			
			if rising_edge(clk) then
			CASE state IS
				WHEN IDLE => --idle
					IF start = '1' THEN
						state <= RESET after 22 ns;
						ready <= '0';
					END IF;
				WHEN RESET => --reset
					state <= LOAD after 22 ns;
				WHEN LOAD => --load
					state <= S after 22 ns;
				WHEN S => -- Count until hold
					if(counter = 4) THEN
						state <= HOLD after 22 ns;
						counter <= 0 after 22 ns;
					else
						counter <= counter + 1 after 22 ns;
						state <= S after 22 ns;
					end if;
				WHEN HOLD => --hold
					ready <= '1';
					state <= IDLE after 22 ns;
				WHEN OTHERS =>
					state <= IDLE after 22 ns;
			END CASE;
			end if;
			control_output <= state;
		END IF;

	END PROCESS;
END;
