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
-- CREATED		"Mon Mar 15 20:11:28 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex8 IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		SIN :  IN  STD_LOGIC;
		SL :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		QA :  OUT  STD_LOGIC;
		QB :  OUT  STD_LOGIC;
		QC :  OUT  STD_LOGIC;
		QD :  OUT  STD_LOGIC
	);
END ex8;

ARCHITECTURE bdf_type OF ex8 IS 

SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	DFF_DFDFD :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	DFF_SD :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	DFF_DSF :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;


BEGIN 
QA <= DFF_DFDFD;
QB <= DFF_SD;
QC <= DFF_DSF;
SYNTHESIZED_WIRE_25 <= '1';




PROCESS(CLK,RST,SYNTHESIZED_WIRE_25)
BEGIN
IF (RST = '0') THEN
	DFF_DFDFD <= '0';
ELSIF (SYNTHESIZED_WIRE_25 = '0') THEN
	DFF_DFDFD <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_DFDFD <= SYNTHESIZED_WIRE_24;
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_25)
BEGIN
IF (RST = '0') THEN
	DFF_DSF <= '0';
ELSIF (SYNTHESIZED_WIRE_25 = '0') THEN
	DFF_DSF <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_DSF <= SYNTHESIZED_WIRE_26;
END IF;
END PROCESS;


PROCESS(A,SYNTHESIZED_WIRE_6)
BEGIN
if (SYNTHESIZED_WIRE_6 = '1') THEN
	SYNTHESIZED_WIRE_24 <= A;
ELSE
	SYNTHESIZED_WIRE_24 <= 'Z';
END IF;
END PROCESS;


SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_27);



SYNTHESIZED_WIRE_17 <= NOT(SYNTHESIZED_WIRE_27);



SYNTHESIZED_WIRE_13 <= NOT(SYNTHESIZED_WIRE_27);



SYNTHESIZED_WIRE_15 <= NOT(SYNTHESIZED_WIRE_27);



PROCESS(SIN,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27 = '1') THEN
	SYNTHESIZED_WIRE_24 <= SIN;
ELSE
	SYNTHESIZED_WIRE_24 <= 'Z';
END IF;
END PROCESS;


PROCESS(DFF_DFDFD,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27 = '1') THEN
	SYNTHESIZED_WIRE_28 <= DFF_DFDFD;
ELSE
	SYNTHESIZED_WIRE_28 <= 'Z';
END IF;
END PROCESS;


PROCESS(B,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13 = '1') THEN
	SYNTHESIZED_WIRE_28 <= B;
ELSE
	SYNTHESIZED_WIRE_28 <= 'Z';
END IF;
END PROCESS;


PROCESS(DFF_SD,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27 = '1') THEN
	SYNTHESIZED_WIRE_26 <= DFF_SD;
ELSE
	SYNTHESIZED_WIRE_26 <= 'Z';
END IF;
END PROCESS;


PROCESS(C,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15 = '1') THEN
	SYNTHESIZED_WIRE_26 <= C;
ELSE
	SYNTHESIZED_WIRE_26 <= 'Z';
END IF;
END PROCESS;


PROCESS(DFF_DSF,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27 = '1') THEN
	SYNTHESIZED_WIRE_29 <= DFF_DSF;
ELSE
	SYNTHESIZED_WIRE_29 <= 'Z';
END IF;
END PROCESS;


PROCESS(D,SYNTHESIZED_WIRE_17)
BEGIN
if (SYNTHESIZED_WIRE_17 = '1') THEN
	SYNTHESIZED_WIRE_29 <= D;
ELSE
	SYNTHESIZED_WIRE_29 <= 'Z';
END IF;
END PROCESS;


SYNTHESIZED_WIRE_27 <= NOT(SL);



PROCESS(CLK,RST,SYNTHESIZED_WIRE_25)
BEGIN
IF (RST = '0') THEN
	DFF_SD <= '0';
ELSIF (SYNTHESIZED_WIRE_25 = '0') THEN
	DFF_SD <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_SD <= SYNTHESIZED_WIRE_28;
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_25)
BEGIN
IF (RST = '0') THEN
	QD <= '0';
ELSIF (SYNTHESIZED_WIRE_25 = '0') THEN
	QD <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	QD <= SYNTHESIZED_WIRE_29;
END IF;
END PROCESS;


END bdf_type;