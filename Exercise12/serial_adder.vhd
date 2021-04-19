LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY shiftreg IS
	PORT (
		Clk, Clr, SL, SR, S1, S0 : IN STD_LOGIC;
		P : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END shiftreg;

ARCHITECTURE behavioral OF shiftreg IS
BEGIN
	PROCESS (Clk)
		VARIABLE temp : STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
		IF Clr = '0' THEN
			Q <= "0000" AFTER 22ns;
		ELSIF (S1 = '1' AND S0 = '0' AND Clr = '1') THEN
			temp := P;
			FOR i IN 0 TO 2 LOOP
				temp(i) := temp(i + 1);
			END LOOP;
			temp(3) := SL;
			Q <= temp AFTER 22ns;
		ELSIF (S1 = '0' AND S0 = '1' AND Clr = '1') THEN
			temp := P;
			FOR i IN 0 TO 2 LOOP
				temp(i) := temp(i + 1);
			END LOOP;
			temp(3) := SR;
			Q <= temp AFTER 22ns;
		ELSIF (S1 = '1' AND S0 = '1' AND Clr = '1') THEN
			temp := P;
			Q <= temp AFTER 22ns;
		ELSE
			--do nothing
		END IF;
	END PROCESS;
END behavioral;

