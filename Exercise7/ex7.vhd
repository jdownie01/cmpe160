-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
-- CREATED		"Sun Mar  7 21:39:26 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex7 IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		Qn :  OUT  STD_LOGIC
	);
END ex7;

ARCHITECTURE bdf_type OF ex7 IS 

SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
Q <= SYNTHESIZED_WIRE_6;
Qn <= SYNTHESIZED_WIRE_3;



SYNTHESIZED_WIRE_1 <= NOT(D);



SYNTHESIZED_WIRE_7 <= NOT(CLK);



SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_7 AND D);


SYNTHESIZED_WIRE_5 <= NOT(SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_7);


SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_3 AND SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_3 <= NOT(SYNTHESIZED_WIRE_5 AND SYNTHESIZED_WIRE_6);


END bdf_type;-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
-- CREATED		"Sun Mar  7 21:32:00 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex6_prelab_part2 IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		Qn :  OUT  STD_LOGIC
	);
END ex6_prelab_part2;

ARCHITECTURE bdf_type OF ex6_prelab_part2 IS 

COMPONENT dm74ls04
	PORT(A6 : IN STD_LOGIC;
		 A5 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 Y6 : OUT STD_LOGIC;
		 Y5 : OUT STD_LOGIC;
		 Y4 : OUT STD_LOGIC;
		 Y3 : OUT STD_LOGIC;
		 Y2 : OUT STD_LOGIC;
		 Y1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT dm74ls00
	PORT(B3 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 A4 : IN STD_LOGIC;
		 B4 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 B2 : IN STD_LOGIC;
		 Y3 : OUT STD_LOGIC;
		 Y1 : OUT STD_LOGIC;
		 Y4 : OUT STD_LOGIC;
		 Y2 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;


BEGIN 
Q <= SYNTHESIZED_WIRE_7;
Qn <= SYNTHESIZED_WIRE_2;



b2v_inst : dm74ls04
PORT MAP(A6 => D,
		 A5 => clk,
		 A3 => SYNTHESIZED_WIRE_17,
		 A1 => SYNTHESIZED_WIRE_18,
		 Y6 => SYNTHESIZED_WIRE_16,
		 Y5 => SYNTHESIZED_WIRE_17,
		 Y3 => SYNTHESIZED_WIRE_9,
		 Y1 => SYNTHESIZED_WIRE_19);


b2v_inst2 : dm74ls00
PORT MAP(B3 => SYNTHESIZED_WIRE_2,
		 A3 => SYNTHESIZED_WIRE_3,
		 A1 => SYNTHESIZED_WIRE_19,
		 B1 => SYNTHESIZED_WIRE_18,
		 A4 => SYNTHESIZED_WIRE_6,
		 B4 => SYNTHESIZED_WIRE_7,
		 A2 => SYNTHESIZED_WIRE_19,
		 B2 => SYNTHESIZED_WIRE_9,
		 Y3 => SYNTHESIZED_WIRE_7,
		 Y1 => SYNTHESIZED_WIRE_3,
		 Y4 => SYNTHESIZED_WIRE_2,
		 Y2 => SYNTHESIZED_WIRE_6);


b2v_inst3 : dm74ls00
PORT MAP(B3 => SYNTHESIZED_WIRE_10,
		 A3 => SYNTHESIZED_WIRE_11,
		 A1 => SYNTHESIZED_WIRE_17,
		 B1 => D,
		 A4 => SYNTHESIZED_WIRE_13,
		 B4 => SYNTHESIZED_WIRE_18,
		 A2 => SYNTHESIZED_WIRE_17,
		 B2 => SYNTHESIZED_WIRE_16,
		 Y3 => SYNTHESIZED_WIRE_18,
		 Y1 => SYNTHESIZED_WIRE_11,
		 Y4 => SYNTHESIZED_WIRE_10,
		 Y2 => SYNTHESIZED_WIRE_13);


END bdf_type;