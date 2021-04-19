LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY inverter IS
	PORT (
		A : IN std_logic;
		Y : OUT std_logic
	);
END inverter;

ARCHITECTURE df OF inverter IS
BEGIN
	Y <= NOT A AFTER 4 ns;
END;
