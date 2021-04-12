entity 74LS153 is
port(
 G1,G2,A,B	: in std_logic;
 C1, C2		: in std_logic_vector(3 downto 0);
 Y1, Y2		: out std_logic);
end 74LS153;

architecture df of 74LS153 is
begin
	sControl1 <= ;
	with sControl1 select
		Y1 <= C1(3) when "000",
		      C1(2) when "001",
		      C1(1) when "010",
		      C1(0) when "100",
		      '0' when others;


