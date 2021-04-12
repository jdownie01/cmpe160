library ieee;
use ieee.std_logic_1164.all;

entity hw10 is
	port(
	A,C,D,E,F	: in std_logic;
	L		: out std_logic);
end hw10;

architecture df of hw10
	signal B,H,I,G,J,K,L : std_logic;
begin
	G <= NOT F;
	j <= NOT I;
	I <= E OR G;

	B <= NOT A;
	H <= B AND C AND D;
	K <= H NOR J;

	L <= NOT K;
end df;

architecture df2 of hw10
	signal B,H,I,G,J,K,L : std_logic;
begin
	L <= (NOT((NOT A)AND C AND D)NOR (NOT ((NOT F)OR E)));
end df2;
