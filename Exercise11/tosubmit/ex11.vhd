LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux2 IS
	PORT (
		SA, SB, G1, G2 : IN std_logic; --Inputs
		C1, C2 : IN std_logic_vector(3 DOWNTO 0); --Controls
		Y1, Y2 : OUT std_logic --Outputs
	);
END mux2; 

ARCHITECTURE df OF mux2 IS
	SIGNAL sControl1 : std_logic_vector(2 DOWNTO 0); --Control Signal 1
	SIGNAL sControl2 : std_logic_vector(2 DOWNTO 0); --Control Signal 2

BEGIN
	sControl1(2) <= SA;
	sControl1(1) <= SB;
	sControl1(0) <= G1;

	sControl2(2) <= SA;
	sControl2(1) <= SB;
	sControl2(0) <= G2;

	WITH sControl1 SELECT Y1 <= 
		C1(3) WHEN "000", 
		C1(2) WHEN "010", 
		C1(1) WHEN "100", 
		C1(0) WHEN "110", 
		'0' WHEN OTHERS;
	WITH sControl2 SELECT Y2 <= 
		C1(3) WHEN "000", 
		C1(2) WHEN "010", 
		C1(1) WHEN "100", 
		C1(0) WHEN "110", 
		'0' WHEN OTHERS;

 
END ARCHITECTURE df;

ARCHITECTURE behv OF mux2 IS
	SIGNAL sControl1 : std_logic_vector(2 DOWNTO 0);
	SIGNAL sControl2 : std_logic_vector(2 DOWNTO 0);
BEGIN
	sControl1(2) <= SA;
	sControl1(1) <= SB;
	sControl1(0) <= G1;

	sControl2(2) <= SA;
	sControl2(1) <= SB;
	sControl2(0) <= G2;
	PROCESS (sControl1, C1)
	BEGIN
		CASE sControl1 IS
			WHEN "000" => 
				Y1 <= C1(3) AFTER 22ns;
			WHEN "010" => 
				Y1 <= C1(2) AFTER 22ns;
			WHEN "100" => 
				Y1 <= C1(1) AFTER 22ns;
			WHEN "110" => 
				Y1 <= C1(0) AFTER 22ns;
			WHEN OTHERS => 
				Y1 <= '0' AFTER 22ns;
		END CASE;
	END PROCESS;

	PROCESS (sControl2, C2)
		BEGIN
			CASE sControl2 IS
				WHEN "000" => 
					Y2 <= C2(3) AFTER 22ns;
				WHEN "010" => 
					Y2 <= C2(2) AFTER 22ns;
				WHEN "100" => 
					Y2 <= C2(1) AFTER 22ns;
				WHEN "110" => 
					Y2 <= C2(0) AFTER 22ns;
				WHEN OTHERS => 
					Y2 <= '0' AFTER 22ns;
			END CASE;
		END PROCESS;
		END ARCHITECTURE behv;
 
		ARCHITECTURE struct OF mux2 IS

			COMPONENT mux --4:1 mux
				PORT (
					G : IN std_logic;
					C : IN std_logic_vector(3 DOWNTO 0);
					SA : IN std_logic;
					SB : IN std_logic;
					Y : OUT std_logic
				);
			END COMPONENT;

			COMPONENT inverter --inverter
				PORT (
					A : IN std_logic;
					Y : OUT std_logic
				);
			END COMPONENT;

			SIGNAL G1_inv : std_logic; --inverted G1
			SIGNAL G2_inv : std_logic; --inverted G2

		BEGIN
			inverter_1 : inverter
			PORT MAP(A => G1, Y => G1_inv);
			inverter_2 : inverter
			PORT MAP(A => G2, Y => G2_inv);
			mux_1 : mux
			PORT MAP(G => G1_inv, C => C1, SA => SA, SB => SB, Y => Y1);
		mux_2 : mux
		PORT MAP(G => G2_inv, C => C1, SA => SA, SB => SB, Y => Y2);

END struct;
