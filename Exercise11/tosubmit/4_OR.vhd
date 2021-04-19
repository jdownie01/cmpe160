LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY or4 IS
	PORT (
		A : IN std_logic;
		B : IN std_logic;
		C : IN std_logic;
		D : IN std_logic;
		Y : OUT std_logic
	);
END or4;

ARCHITECTURE df OF or4 IS
BEGIN
	Y <= (A OR B OR C OR D)AFTER 7 ns; --Output
END;
