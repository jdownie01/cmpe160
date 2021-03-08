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
-- CREATED		"Sun Mar  7 02:49:48 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex6 IS 
	PORT
	(
		B :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		Cin :  IN  STD_LOGIC;
		Cout :  OUT  STD_LOGIC;
		Sum :  OUT  STD_LOGIC
	);
END ex6;

ARCHITECTURE bdf_type OF ex6 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_9 <= A XOR B;


SYNTHESIZED_WIRE_7 <= A XOR B;


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1;


Cout <= SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


Sum <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_5 <= Cin AND SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_7 AND SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_9);



SYNTHESIZED_WIRE_8 <= NOT(Cin);



SYNTHESIZED_WIRE_0 <= A AND B;


SYNTHESIZED_WIRE_2 <= Cin AND A;


SYNTHESIZED_WIRE_1 <= Cin AND B;


END bdf_type;