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
-- CREATED		"Sat Mar 13 14:41:36 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex7 IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		Qn :  OUT  STD_LOGIC
	);
END ex7;

ARCHITECTURE bdf_type OF ex7 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;


BEGIN 
Q <= SYNTHESIZED_WIRE_15;
Qn <= SYNTHESIZED_WIRE_12;



SYNTHESIZED_WIRE_17 <= NOT(SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_9 <= NOT(SYNTHESIZED_WIRE_17);



SYNTHESIZED_WIRE_4 <= NOT(D);



SYNTHESIZED_WIRE_18 <= NOT(clk);



SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_1 <= D AND SYNTHESIZED_WIRE_18;


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_17);


SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_19 AND SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_17 AND SYNTHESIZED_WIRE_19;


SYNTHESIZED_WIRE_15 <= NOT(SYNTHESIZED_WIRE_12 OR SYNTHESIZED_WIRE_13);


SYNTHESIZED_WIRE_12 <= NOT(SYNTHESIZED_WIRE_14 OR SYNTHESIZED_WIRE_15);


SYNTHESIZED_WIRE_19 <= NOT(SYNTHESIZED_WIRE_16);



SYNTHESIZED_WIRE_16 <= NOT(clk);



END bdf_type;