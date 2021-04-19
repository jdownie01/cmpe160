LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux IS
	PORT (
		SA, SB, G : IN std_logic; --Inputs
		C : IN std_logic_vector(3 DOWNTO 0); 
		Y : OUT std_logic
	);
END mux;

ARCHITECTURE struct OF mux IS

	COMPONENT or4 --Four Input Or Gate
		PORT (
			A : IN std_logic;
			B : IN std_logic;
			C : IN std_logic;
			D : IN std_logic;
			Y : OUT std_logic
		);
	END COMPONENT;

	COMPONENT and4 --Four Input And Gate
		PORT (
			A : IN std_logic;
			B : IN std_logic;
			C : IN std_logic;
			D : IN std_logic;
			Y : OUT std_logic
		);
	END COMPONENT;
	COMPONENT inverter --Inverter Gate
		PORT (
			A : IN std_logic;
			Y : OUT std_logic
		);
	END COMPONENT;

	SIGNAL and1_s : std_logic := '0';
	SIGNAL and2_s : std_logic := '0';
	SIGNAL and3_s : std_logic := '0';
	SIGNAL and4_s : std_logic := '0';
	SIGNAL out_s : std_logic;
	SIGNAL inverta_s : std_logic;
	SIGNAL invertb_s : std_logic;
	SIGNAL G_inv : std_logic;

BEGIN
	invert_1 : inverter
	PORT MAP(A => SA, Y => inverta_s);
	invert_2 : inverter
	PORT MAP(A => SB, Y => invertb_s);
	invert_3 : inverter
	PORT MAP(A => G, Y => G_inv);

	and_1 : and4
	PORT MAP(A => G, B => inverta_s, C => invertb_s, D => C(3), Y => and1_s);
	and_2 : and4
	PORT MAP(A => G, B => invertb_s, C => SA, D => C(1), Y => and2_s);
	and_3 : and4
	PORT MAP(A => G, B => SB, C => inverta_s, D => C(2), Y => and3_s);
	and_4 : and4
	PORT MAP(A => G, B => SB, C => SA, D => C(0), Y => and4_s);

	or_1 : or4
	PORT MAP(A => and1_s, B => and2_s, C => and3_s, D => and4_s, Y => out_s);

	--Final Output
	Y <= out_s AND NOT G_inv;

END struct;
