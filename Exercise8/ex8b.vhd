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
-- CREATED		"Mon Mar 15 20:04:36 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex8b IS 
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
END ex8b;

ARCHITECTURE bdf_type OF ex8b IS 

SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	DFF_DFDFD :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	DFF_SD :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	DFF_DSF :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;


BEGIN 
QA <= DFF_DFDFD;
QB <= DFF_SD;
QC <= DFF_DSF;
SYNTHESIZED_WIRE_17 <= '1';




PROCESS(CLK,RST,SYNTHESIZED_WIRE_17)
BEGIN
IF (RST = '0') THEN
	DFF_DFDFD <= '0';
ELSIF (SYNTHESIZED_WIRE_17 = '0') THEN
	DFF_DFDFD <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_DFDFD <= SYNTHESIZED_WIRE_16;
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_17)
BEGIN
IF (RST = '0') THEN
	DFF_DSF <= '0';
ELSIF (SYNTHESIZED_WIRE_17 = '0') THEN
	DFF_DSF <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_DSF <= SYNTHESIZED_WIRE_18;
END IF;
END PROCESS;


PROCESS(A,SYNTHESIZED_WIRE_6)
BEGIN
if (SYNTHESIZED_WIRE_6 = '1') THEN
	SYNTHESIZED_WIRE_16 <= A;
ELSE
	SYNTHESIZED_WIRE_16 <= 'Z';
END IF;
END PROCESS;


SYNTHESIZED_WIRE_6 <= NOT(SL);



SYNTHESIZED_WIRE_9 <= NOT(SL);



SYNTHESIZED_WIRE_7 <= NOT(SL);



SYNTHESIZED_WIRE_8 <= NOT(SL);



PROCESS(SIN,SL)
BEGIN
if (SL = '1') THEN
	SYNTHESIZED_WIRE_16 <= SIN;
ELSE
	SYNTHESIZED_WIRE_16 <= 'Z';
END IF;
END PROCESS;


PROCESS(DFF_DFDFD,SL)
BEGIN
if (SL = '1') THEN
	SYNTHESIZED_WIRE_19 <= DFF_DFDFD;
ELSE
	SYNTHESIZED_WIRE_19 <= 'Z';
END IF;
END PROCESS;


PROCESS(B,SYNTHESIZED_WIRE_7)
BEGIN
if (SYNTHESIZED_WIRE_7 = '1') THEN
	SYNTHESIZED_WIRE_19 <= B;
ELSE
	SYNTHESIZED_WIRE_19 <= 'Z';
END IF;
END PROCESS;


PROCESS(DFF_SD,SL)
BEGIN
if (SL = '1') THEN
	SYNTHESIZED_WIRE_18 <= DFF_SD;
ELSE
	SYNTHESIZED_WIRE_18 <= 'Z';
END IF;
END PROCESS;


PROCESS(C,SYNTHESIZED_WIRE_8)
BEGIN
if (SYNTHESIZED_WIRE_8 = '1') THEN
	SYNTHESIZED_WIRE_18 <= C;
ELSE
	SYNTHESIZED_WIRE_18 <= 'Z';
END IF;
END PROCESS;


PROCESS(DFF_DSF,SL)
BEGIN
if (SL = '1') THEN
	SYNTHESIZED_WIRE_20 <= DFF_DSF;
ELSE
	SYNTHESIZED_WIRE_20 <= 'Z';
END IF;
END PROCESS;


PROCESS(D,SYNTHESIZED_WIRE_9)
BEGIN
if (SYNTHESIZED_WIRE_9 = '1') THEN
	SYNTHESIZED_WIRE_20 <= D;
ELSE
	SYNTHESIZED_WIRE_20 <= 'Z';
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_17)
BEGIN
IF (RST = '0') THEN
	DFF_SD <= '0';
ELSIF (SYNTHESIZED_WIRE_17 = '0') THEN
	DFF_SD <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_SD <= SYNTHESIZED_WIRE_19;
END IF;
END PROCESS;


PROCESS(CLK,RST,SYNTHESIZED_WIRE_17)
BEGIN
IF (RST = '0') THEN
	QD <= '0';
ELSIF (SYNTHESIZED_WIRE_17 = '0') THEN
	QD <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	QD <= SYNTHESIZED_WIRE_20;
END IF;
END PROCESS;


END bdf_type;