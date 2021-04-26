library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ctrlunit_tb is
end;

architecture bench of ctrlunit_tb is

  component ctrlunit
  	PORT (
  		start : IN std_logic;
  		clk : IN std_logic;
  		clear_sm : IN std_logic;
  		control_output : OUT std_logic_vector(3 DOWNTO 0)
  	);
  end component;

  signal start: std_logic;
  signal clk: std_logic;
  signal clear_sm: std_logic;
  signal control_output: std_logic_vector(3 DOWNTO 0) ;
constant clock_period: time := 15 ns;
  signal stop_the_clock: boolean;
begin

  uut: ctrlunit port map ( start          => start,
                           clk            => clk,
                           clear_sm       => clear_sm,
                           control_output => control_output );

  
  stimulus: process
  begin
  
    -- Put initialisation code here
	start<='0';
	clear_sm <= '1';
	wait for 10 ns;
	clear_sm <= '0';	
	wait for 50 ns;
	start <= '1';
	
	wait for 750 	ns;

    -- Put test bench stimulus code here
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
