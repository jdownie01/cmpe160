library ieee;
use ieee.std_logic_1164.all;

entity mux2 is
port(
 SA,SB,G1,G2	: in std_logic;
 C1,C2		: in std_logic_vector(3 downto 0);
 Y1,Y2		: out std_logic);
end mux2;	

architecture df of mux2 is
	signal sControl1 : std_logic_vector(2 downto 0);
	signal sControl2 : std_logic_vector(2 downto 0);

begin
	sControl1(0) <= SA;
	sControl1(1) <= SB;
	sControl1(2) <= G1;

	sControl2(0) <= SA;
	sControl2(1) <= SB;
	sControl2(2) <= G2;

	with sControl1 select Y1 <=
		C1(0) when "000",
		C1(1) when "010",
		C1(2) when "100",
		C1(3) when "110",
		'0' when others;


	with sControl2 select Y2 <=
		C2(0) when "000",
		C2(1) when "010",
		C2(2) when "100",
		C2(3) when "110",
		'0' when others;

	  
end architecture df;

architecture behv of mux2 is
	signal sControl1 : std_logic_vector(2 downto 0);
	signal sControl2 : std_logic_vector(2 downto 0);
begin
	sControl1(0) <= SA;
	sControl1(1) <= SB;
	sControl1(2) <= G1;

	sControl2(0) <= SA;
	sControl2(1) <= SB;
	sControl2(2) <= G2;


	process
	begin
		wait for 22 ns;
		case sControl1 is
			when "000" =>
				Y1 <= C1(0);
			when "010" =>
				Y1 <= C1(1);
			when "100" =>
				Y1 <= C1(2);
			when "110" =>
				Y1 <= C1(3);
			when others =>
				Y1 <= '0';
		end case;
	end process;

	process
	begin
		wait for 22 ns;
		case sControl2 is
			when "000" =>
				Y2 <= C2(0);
			when "010" =>
				Y2 <= C2(1);
			when "100" =>
				Y2 <= C2(2);
			when "110" =>
				Y2 <= C2(3);
			when others =>
				Y2 <= '0';
		end case;
	end process;
end architecture behv;
		


architecture struct of mux2 is

component mux
port ( 
G : in std_logic;
C : in std_logic_vector(3 downto 0);
SA : in std_logic;
SB : in std_logic;
Y : out std_logic);
end component;

component inverter
port(
A: in std_logic;
Y: out std_logic);
end component;

signal G1_inv: std_logic;
signal G2_inv: std_logic;

begin
inverter_1:inverter port map (A=>G1, Y=>G1_inv);
inverter_2:inverter port map (A=>G2, Y=>G2_inv);
mux_1:mux port map(G=>G1_inv, C=>C1, SA=>SA, SB=>SB, Y=>Y1);
mux_2:mux port map(G=>G2_inv, C=>C1, SA=>SA, SB=>SB, Y=>Y2);

end struct;
