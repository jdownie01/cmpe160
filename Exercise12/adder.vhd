library ieee;
use ieee.std_logic_1164.all;


entity adder is
        port( a, b, cin         : in  STD_LOGIC;
              sum, cout         : out STD_LOGIC );
end adder;

architecture behaviorial of adder is
begin
	sum <=  (a xor b xor cin) after 8 ns;


    cout <= ((a and b)or (a and cin)or (b and cin))after 8 ns;
end behaviorial;

