// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Sun Mar  7 02:49:37 2021"

module ex6(
	B,
	A,
	Cin,
	Cout,
	Sum
);


input wire	B;
input wire	A;
input wire	Cin;
output wire	Cout;
output wire	Sum;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;




assign	SYNTHESIZED_WIRE_9 = A ^ B;

assign	SYNTHESIZED_WIRE_7 = A ^ B;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;

assign	Cout = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	Sum = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_5 = Cin & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_6 =  ~SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_8 =  ~Cin;

assign	SYNTHESIZED_WIRE_0 = A & B;

assign	SYNTHESIZED_WIRE_2 = Cin & A;

assign	SYNTHESIZED_WIRE_1 = Cin & B;


endmodule
