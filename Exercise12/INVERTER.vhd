library ieee;
use ieee.std_logic_1164.all;

entity inverter is
	port (A : in std_logic;
	      Y : out std_logic);
end inverter;

architecture df of inverter is
begin
	Y <=NOT A after 2 ns;
end;
