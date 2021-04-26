library ieee;
use ieee.std_logic_1164.all;

entity dff is 
   port(
      Q : out std_logic;    
      Clk :in std_logic;   
      Clear: in std_logic;
      Enable: in std_logic;
      D :in  std_logic    
   );
end dff;
architecture behavioral of dff is  
begin  
 process(Clk, Clear)
	begin
    if(rising_edge(Clk)) then
    	if (Enable='1') then
    		Q <= D after 8 ns;
    	end if;
    end if;
    if (Clear = '0') then
    		Q <= '0'after 8 ns;
    end if;    
 end process;  
end Behavioral; 
