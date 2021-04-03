library ieee;
use ieee.std_logic_1164.all;

entity notes is
	port(rst :  in std_logic;

	clk : in std_logic; -- comment
	A, B: in std_logic;
	y : out std_logic); -- no semicolon after last line in port

end entity notes;

architecture oh_behave of notes is
	--decleration section
	Signal D,Q:std_logic_bector(1 downto 0);

begin
	--concurrent section
	D(1)<=



       D(0)<=
end;
