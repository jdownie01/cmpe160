
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity shiftreg_tb is
end;

architecture bench of shiftreg_tb is

  component shiftreg
  	PORT (
  		Clk, Clr, SL, SR, S1, S0 : IN STD_LOGIC;
  		P : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  		Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
  end component;

  signal Clk, Clr, SL, SR, S1, S0: STD_LOGIC;
  signal P: STD_LOGIC_VECTOR(3 DOWNTO 0);
  signal Q: STD_LOGIC_VECTOR(3 DOWNTO 0);

  constant clock_period: time := 100 ns;
  signal stop_the_clock: boolean;

begin

  uut: shiftreg port map ( Clk => Clk,
                           Clr => Clr,
                           SL  => SL,
                           SR  => SR,
                           S1  => S1,
                           S0  => S0,
                           P   => P,
                           Q   => Q );

  stimulus: process
  begin
  
  	P <= "1111";
  	SL <= '1';
  	SR <= '1';
  	S1 <= '1';
  	S0 <= '0';

    Clr <= '0';
    wait for 5 ns;
    Clr <= '1';
    wait for 5 ns;

    wait for 800 ns;

    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      Clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
