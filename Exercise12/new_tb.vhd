library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- In order for this test bench to work, you will need to update the component
-- name to match what is in your shift register vhd file. If you have chosen
-- to parallelize the inputs, be sure to update the component below
-- appropriately. Finally, there are assert statements that must be filled in.
-------------------------------------------------------------------------------

entity tb_new is
end tb_new;

architecture behav of tb_new is

component serial_adder is
  port (clk, clear_dp: IN STD_LOGIC;
		in_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		in_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		control : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		sum : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		carry : OUT STD_LOGIC);
end component;

    -- Helper function to print std_logic_vectors more easily
    function vec2str(vec: std_logic_vector) return string is
        variable stmp: string(vec'high+1 downto 1);
        variable counter : integer := 1;
    begin
        for i in vec'reverse_range loop
            stmp(counter) := std_logic'image(vec(i))(2); -- image returns '1' (with quotes)
            counter := counter + 1;
        end loop;
        return stmp;
    end vec2str;

	constant clk_period : time := 100 ns;
    -- Inputs
	signal a_data : std_logic_vector(3 downto 0) := (others => '0');
	signal b_data : std_logic_vector(3 downto 0) := (others => '0');
	signal clk : std_logic := '0';
	signal clear : std_logic := '0';
	signal control : std_logic_vector(1 downto 0) := (others => '0');

    -- Outputs
	signal sum_s : std_logic_vector(3 downto 0) := "0000";
	signal o_data : std_logic_vector(3 downto 0) := (others => '0');
    signal carry_s : std_logic := '0';

	begin
	UUT: serial_adder
    port map (
		in_a(0) => a_data(0),
		in_a(1) => a_data(1),
		in_a(2) => a_data(2),
		in_a(3) => a_data(3),
		in_b(0) => b_data(0),
		in_b(1) => b_data(1),
		in_b(2) => b_data(2),
		in_b(3) => b_data(3),
		clk => clk,
		clear_dp => clear,
		control(0) => control(0),
		control(1) => control(1),
		sum => sum_s,
		carry => carry_s
	);

    o_data<= (sum_s(0),sum_s(1),sum_s(2),sum_s(3));

	clk_process: process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process clk_process;

	rst_process: process
	begin
		clear <= '0';
		wait for clk_period/4;
		clear <= '1';
		wait;
	end process rst_process;

	stim_process: process
    begin
        wait until clear = '1'; -- Wait for reset to finish
        a_data <= "1001"; -- TODO: Fill this value in
		b_data <= "0110";
        control <= "11"; -- load into the shift register
        wait for clk_period;
        assert o_data = "1001"
            report "Shift register failed to load at: " & time'image(now) &
                   ". Expected: " & vec2str("1001") & -- TODO: This should match the value in the assert
                   ". Got: " & vec2str(a_data)
            severity error; -- The report statement tells the user what time the
                            -- failure occured at, and what was expected
		assert b_data = "0110"
            report "Shift register failed to load at: " & time'image(now) &
                   ". Expected: " & vec2str("0110") & -- TODO: This should match the value in the assert
                   ". Got: " & vec2str(b_data)
            severity error; -- The report statement tells the user what time the
                            -- failure occured at, and what was expected
							

        control <= "01"; -- TODO: start
        wait for clk_period*4;
        assert o_data = "1111"
            report "Adder failed to add at: " & time'image(now) &
                   ". Expected: " & vec2str("1111") &
                   ". Got: " & vec2str(o_data)
            severity error;


	end process stim_process;

end behav;

