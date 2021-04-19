library ieee;
use iee.std_logic1164.all;

entity gray_counter_tb is
	end entity;

architecture oh_test of gray_counter_tb is
type testrecord is record
	mBCD, outGray : std_logic_vector(3 downto 0);
	illegal : std_logic;
end record;

type testrecordarray is array (natural range <>) of testrecord;

constant ctest : testrecordarray := (
	(X"0",X"0", '0'), (X"2",X"3",'0'), (X"E", X"9", '1')
);

signal bcd_code : std_logic_vector(3 downto 0) := "0000";
signal gray_code : std_logic_vector(3 downto 0);
signal illegal : std_logic;

begin
	uut: entity work.gray_conv port map
	(bcd => bcd_code, gray => gray_code, illegal => illegal);
	 tb : process is begin
		 for i in ctest'range loop
			 bcd_code <= ctest(i).inBCD;
			 wait for 50ns;
			 assert(gray_code = ctest(i).outGRAY) report "error";
		 end loop;
		 wait;
	 end process;
	end;
