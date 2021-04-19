LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY and4 IS
	PORT (
		A : IN std_logic;
		B : IN std_logic;
		C : IN std_logic;
		D : IN std_logic;
		Y : OUT std_logic
	);
END and4;

ARCHITECTURE df OF and4 IS
BEGIN
	Y <= (A AND B AND C AND D) AFTER 7 ns;  --Output
END;
