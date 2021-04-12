library ieee;
use ieee.std_logic_1164.all;

entity mux is
port(
 SA,SB, G	: in std_logic;
 C		: in std_logic_vector(3 downto 0);
 Y		: out std_logic);
end mux;

architecture struct of mux is



component or4
port ( 
A : in std_logic;
B : in std_logic;
C : in std_logic;
D : in std_logic;
Y : out std_logic);
end component;

component and4
port ( 
A : in std_logic;
B : in std_logic;
C : in std_logic;
D : in std_logic;
Y : out std_logic);
end component;


component inverter
port ( 
A : in std_logic;
Y : out std_logic);
end component;

signal and1_s : std_logic:='0';
signal and2_s : std_logic:='0';
signal and3_s : std_logic:='0';
signal and4_s : std_logic:='0';
signal out_s : std_logic;
signal inverta_s : std_logic;
signal invertb_s : std_logic;

begin
invert_1:inverter port map (A=>SA, Y=>inverta_s);
invert_2:inverter port map (A=>SB, Y=>invertb_s);

and_1:and4 port map( A=>G, B => inverta_s, C=> invertb_s, D => C(0), Y => and1_s);
and_2:and4 port map( A=>G, B => invertb_s, C => SA, D => C(1), Y => and2_s);
and_3:and4 port map( A=>G, B => SB, C => inverta_s, D => C(2), Y => and3_s);
and_4:and4 port map( A=>G, B => SB, C => SA, D => C(3), Y => and4_s);

or_1:or4 port map( A=>and1_s, B => and2_s, C => and3_s, D => and4_s, Y => out_s);

Y <= out_s and not G;

end struct;
