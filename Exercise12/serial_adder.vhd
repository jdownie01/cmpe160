	LIBRARY ieee;
	USE ieee.std_logic_1164.ALL;

	ENTITY shiftreg IS
		PORT (
			Clk, Clr, SL, SR, S1, S0 : IN STD_LOGIC;
			P : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END shiftreg;

	ARCHITECTURE behavioral OF shiftreg IS
		signal q_s : STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
		Q<=q_s AFTER 22 ns;
		PROCESS (Clk, Clr)
			variable v_both : std_logic_vector(1 downto 0);
		BEGIN
		  v_both := S1 & S0;
			IF Clr = '0' THEN
				q_s <= "0000";
			ELSIF rising_edge(Clk) THEN
				CASE v_both IS
					WHEN "10" =>
						--q_s(1) <= q_s(0) AFTER 22ns;
						--q_s(2) <= q_s(1) AFTER 22ns;
						--q_s(3) <= q_s(2) AFTER 22ns;
						--q_s(0) <= SL AFTER 22ns;
						q_s <= q_s(2 downto 0) & SL;
					WHEN "01" =>
						q_s(0) <= q_s(1);
						q_s(1) <= q_s(2);
						q_s(2) <= q_s(3);
						q_s(3) <= SR;
					WHEN "11" =>
						q_s <= P;
					WHEN OTHERS =>
						q_s <= q_s;
					END CASE;

			END IF;

		END PROCESS;
	END behavioral;

