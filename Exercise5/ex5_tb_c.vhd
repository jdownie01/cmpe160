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
-- CREATED		"Mon Feb 22 20:17:23 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex5_tb_c IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		F_SOP :  OUT  STD_LOGIC;
		F_POS :  OUT  STD_LOGIC
	);
END ex5_tb_c;

ARCHITECTURE bdf_type OF ex5_tb_c IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1;



SYNTHESIZED_WIRE_20 <= NOT(A);




SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_2);




SYNTHESIZED_WIRE_18 <= C AND B;





SYNTHESIZED_WIRE_16 <= C AND SYNTHESIZED_WIRE_20;


F_POS <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_19 <= B AND A;


SYNTHESIZED_WIRE_21 <= NOT(A);



SYNTHESIZED_WIRE_11 <= NOT(D);



SYNTHESIZED_WIRE_14 <= NOT(D);



SYNTHESIZED_WIRE_7 <= C OR SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_21 OR D;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_10 OR A;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_11 OR C;


SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_21 OR B;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_20 AND SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_15 OR SYNTHESIZED_WIRE_16;


F_SOP <= SYNTHESIZED_WIRE_17 OR SYNTHESIZED_WIRE_18;



SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_19 AND D;


END bdf_type;
