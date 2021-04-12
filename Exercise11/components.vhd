library ieee;
use ieee.std_logic_1164.all;

package xxx is

component or4
port (aport (
A : in std_logic;
B : in std_logic;
C : in std_logic;
D : in std_logic;
Y : out std_logic);
end component;

component and4
port (aport (
A : in std_logic;
B : in std_logic;
C : in std_logic;
D : in std_logic;
Y : out std_logic);
end component;


component inverter
port (aport (
A : in std_logic;
Y : out std_logic);
end component;