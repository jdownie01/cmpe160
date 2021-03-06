library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port (
	A	: in std_logic;
	B	: in std_logic;
	Cin	: in std_logic;

	
	Sum	: out std_logic;
	Cout	: out std_logic);
end full_adder;

architecture df of full_adder is
	signal s_1,s_2,s_3:std_logic:='0';
begin
	sum <=((A XOR B) XOR Cin);
	s_1 <=(A AND B);
	s_2 <=(A AND Cin);
	s_3 <=(B AND Cin); 

	Cout <=(s_1 OR s_2 OR s_3);
end;