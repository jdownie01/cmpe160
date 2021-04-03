-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Mon Mar 29 19:51:02 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex9 IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		Z :  OUT  STD_LOGIC
	);
END ex9;

ARCHITECTURE bdf_type OF ex9 IS 

SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_18 <= '1';



SYNTHESIZED_WIRE_9 <= A AND B;


SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_14 AND SYNTHESIZED_WIRE_15 AND A;


SYNTHESIZED_WIRE_4 <= NOT(A);



SYNTHESIZED_WIRE_17 <= NOT(B);




SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_14);



Z <= SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_7 <= A AND SYNTHESIZED_WIRE_17 AND SYNTHESIZED_WIRE_15 AND SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_16 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_8 OR SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_15 <= NOT(SYNTHESIZED_WIRE_16);



PROCESS(CLK,RST,SYNTHESIZED_WIRE_18)
BEGIN
IF (RST = '0') THEN
	SYNTHESIZED_WIRE_14 <= '0';
ELSIF (SYNTHESIZED_WIRE_18 = '0') THEN
	SYNTHESIZED_WIRE_14 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_10;
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_18)
BEGIN
IF (RST = '0') THEN
	SYNTHESIZED_WIRE_16 <= '0';
ELSIF (SYNTHESIZED_WIRE_18 = '0') THEN
	SYNTHESIZED_WIRE_16 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_12;
END IF;
END PROCESS;


END bdf_type;