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
-- CREATED		"Fri Mar  5 01:51:51 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex7_prelab_part1 IS 
	PORT
	(
		EN :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		Qn :  OUT  STD_LOGIC
	);
END ex7_prelab_part1;

ARCHITECTURE bdf_type OF ex7_prelab_part1 IS 

SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
Q <= SYNTHESIZED_WIRE_3;
Qn <= SYNTHESIZED_WIRE_6;



SYNTHESIZED_WIRE_1 <= NOT(D);



SYNTHESIZED_WIRE_7 <= NOT(EN);



SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_7 AND D);


SYNTHESIZED_WIRE_5 <= NOT(SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_7);


SYNTHESIZED_WIRE_3 <= NOT(SYNTHESIZED_WIRE_3 AND SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_5 AND SYNTHESIZED_WIRE_6);


END bdf_type;