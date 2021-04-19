LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux2_tb IS

END mux2_tb; 

ARCHITECTURE test_bench0 OF mux2_tb IS

	-- component declaration for the Unit Under Test (UUT)
	COMPONENT mux2
		PORT (
			SA, SB, G1, G2 : IN std_logic;
			C1, C2 : IN std_logic_vector(3 DOWNTO 0);
			Y1, Y2 : OUT std_logic
		);
	END COMPONENT;

	-- signals to stimulate UUT inputs
	SIGNAL SA, SB, G1, G2 : std_logic;
	SIGNAL C1, C2 : std_logic_vector(3 DOWNTO 0);

	-- signals to read UUT outputs
	SIGNAL Y1, Y2 : std_logic;
	SIGNAL Y21, Y22 : std_logic;
	SIGNAL Y31, Y32 : std_logic;

	CONSTANT clk_period : TIME := 100 ns;
	FOR UUT1 : mux2 USE ENTITY work.mux2(df);
		FOR UUT2 : mux2 USE ENTITY work.mux2(struct);
			FOR UUT3 : mux2 USE ENTITY work.mux2(behv);
			BEGIN
				-- Unit Under Test (UUT ) instance
				UUT1 : mux2
				PORT MAP(
					SA => SA, 
					SB => SB, 
					G1 => G1, 
					G2 => G2, 
					C1 => C1, 
					C2 => C2, 
					Y2 => Y2, 
					Y1 => Y1
				);
				UUT2 : mux2
				PORT MAP(
					SA => SA, 
					SB => SB, 
					G1 => G1, 
					G2 => G2, 
					C1 => C1, 
					C2 => C2, 
					Y2 => Y22, 
					Y1 => Y21
				);
				UUT3 : mux2
				PORT MAP(
					SA => SA, 
					SB => SB, 
					G1 => G1, 
					G2 => G2, 
					C1 => C1, 
					C2 => C2, 
					Y2 => Y32, 
					Y1 => Y31
				);

				-- stimulus CLK
				G1 <= '0';
				G2 <= '0';

				-- stimulus C1
				stimulusC1 : PROCESS
				BEGIN
					C1 <= "1010"; -- at 0 ns
					WAIT FOR clk_period; 
					C1 <= "1010"; -- at 100 ns
					WAIT FOR clk_period;
					C1 <= "1010";
					WAIT FOR clk_period;
					C1 <= "1010";
					WAIT FOR clk_period;
					C1 <= "0101";
					WAIT FOR clk_period;
					C1 <= "0101";
					WAIT FOR clk_period;
					C1 <= "0101";
					WAIT FOR clk_period;
					C1 <= "0101";
					WAIT;
				END PROCESS;
 
				stimulusC2 : PROCESS
				BEGIN
					C2 <= "1010"; -- at 0 ns
					WAIT FOR clk_period; 
					C2 <= "1010"; -- at 100 ns
					WAIT FOR clk_period;
					C2 <= "1010";
					WAIT FOR clk_period;
					C2 <= "1010";
					WAIT FOR clk_period;
					C2 <= "0101";
					WAIT FOR clk_period;
					C2 <= "0101";
					WAIT FOR clk_period;
					C2 <= "0101";
					WAIT FOR clk_period;
					C2 <= "0101";
					WAIT;
				END PROCESS;
 
				-- stimulus SB
				stimulusSB : PROCESS
				BEGIN
					SB <= '0'; -- at 0 ns
					WAIT FOR clk_period;
					SB <= '0'; -- at 100 ns
					WAIT FOR clk_period;
					SB <= '1';
					WAIT FOR clk_period;
					SB <= '1';
					WAIT FOR clk_period;
					SB <= '0';
					WAIT FOR clk_period;
					SB <= '0';
					WAIT FOR clk_period;
					SB <= '1';
					WAIT FOR clk_period;
					SB <= '1';
					WAIT;
				END PROCESS;

				-- stimulus SA
				stimulusSA : PROCESS
				BEGIN
					SA <= '0'; -- at 0 ns
					WAIT FOR clk_period;
					SA <= '1'; -- at 100 ns
					WAIT FOR clk_period;
					SA <= '0';
					WAIT FOR clk_period;
					SA <= '1';
					WAIT FOR clk_period;
					SA <= '0';
					WAIT FOR clk_period;
					SA <= '1';
					WAIT FOR clk_period;
					SA <= '0';
					WAIT FOR clk_period;
					SA <= '1';
					WAIT;
				END PROCESS;
				END;

				ARCHITECTURE test_bench1 OF mux2_tb IS

					-- component declaration for the Unit Under Test (UUT)
					COMPONENT mux2
						PORT (
							SA, SB, G1, G2 : IN std_logic;
							C1, C2 : IN std_logic_vector(3 DOWNTO 0);
							Y1, Y2 : OUT std_logic
						);
					END COMPONENT;

					-- signals to stimulate UUT inputs
					SIGNAL SA, SB, G1, G2 : std_logic;
					SIGNAL C1, C2 : std_logic_vector(3 DOWNTO 0);

					-- signals to read UUT outputs
					SIGNAL Y1, Y2 : std_logic;
					SIGNAL Y21, Y22 : std_logic;
					SIGNAL Y31, Y32 : std_logic;

					CONSTANT clk_period : TIME := 100 ns;
					FOR UUT1 : mux2 USE ENTITY work.mux2(df);
						FOR UUT2 : mux2 USE ENTITY work.mux2(struct);
							FOR UUT3 : mux2 USE ENTITY work.mux2(behv);
							BEGIN
								-- Unit Under Test (UUT ) instance
								UUT1 : mux2
								PORT MAP(
									SA => SA, 
									SB => SB, 
									G1 => G1, 
									G2 => G2, 
									C1 => C1, 
									C2 => C2, 
									Y2 => Y2, 
									Y1 => Y1
								);
								UUT2 : mux2
								PORT MAP(
									SA => SA, 
									SB => SB, 
									G1 => G1, 
									G2 => G2, 
									C1 => C1, 
									C2 => C2, 
									Y2 => Y22, 
									Y1 => Y21
								);
								UUT3 : mux2
								PORT MAP(
									SA => SA, 
									SB => SB, 
									G1 => G1, 
									G2 => G2, 
									C1 => C1, 
									C2 => C2, 
									Y2 => Y32, 
									Y1 => Y31
								);

								-- stimulus CLK
								G1 <= '1';
								G2 <= '1';

								-- stimulus C1
								stimulusC1 : PROCESS
								BEGIN
									C1 <= "1110"; -- at 0 ns
									WAIT FOR clk_period; 
									C1 <= "0001"; -- at 100 ns
									WAIT FOR clk_period;
									C1 <= "1101";
									WAIT FOR clk_period;
									C1 <= "0010";
									WAIT FOR clk_period;
									C1 <= "1011";
									WAIT FOR clk_period;
									C1 <= "0100";
									WAIT FOR clk_period;
									C1 <= "0111";
									WAIT FOR clk_period;
									C1 <= "1000";
									WAIT;
								END PROCESS;
 
								stimulusC2 : PROCESS
								BEGIN
									C2 <= "1110"; -- at 0 ns
									WAIT FOR clk_period; 
									C2 <= "0001"; -- at 100 ns
									WAIT FOR clk_period;
									C2 <= "1101";
									WAIT FOR clk_period;
									C2 <= "0010";
									WAIT FOR clk_period;
									C2 <= "1011";
									WAIT FOR clk_period;
									C2 <= "0100";
									WAIT FOR clk_period;
									C2 <= "0111";
									WAIT FOR clk_period;
									C2 <= "1000";
									WAIT;
								END PROCESS;
 
								-- stimulus SB
								stimulusSB : PROCESS
								BEGIN
									SB <= '0'; -- at 0 ns
									WAIT FOR clk_period;
									SB <= '0'; -- at 100 ns
									WAIT FOR clk_period;
									SB <= '0';
									WAIT FOR clk_period;
									SB <= '0';
									WAIT FOR clk_period;
									SB <= '1';
									WAIT FOR clk_period;
									SB <= '1';
									WAIT FOR clk_period;
									SB <= '1';
									WAIT FOR clk_period;
									SB <= '1';
									WAIT;
								END PROCESS;

								-- stimulus SA
								stimulusSA : PROCESS
								BEGIN
									SA <= '0'; -- at 0 ns
									WAIT FOR clk_period;
									SA <= '0'; -- at 100 ns
									WAIT FOR clk_period;
									SA <= '1';
									WAIT FOR clk_period;
									SA <= '1';
									WAIT FOR clk_period;
									SA <= '0';
									WAIT FOR clk_period;
									SA <= '0';
									WAIT FOR clk_period;
									SA <= '1';
									WAIT FOR clk_period;
									SA <= '1';
									WAIT;
								END PROCESS;
								END;

								ARCHITECTURE test_bench2 OF mux2_tb IS

									-- component declaration for the Unit Under Test (UUT)
									COMPONENT mux2
										PORT (
											SA, SB, G1, G2 : IN std_logic;
											C1, C2 : IN std_logic_vector(3 DOWNTO 0);
											Y1, Y2 : OUT std_logic
										);
									END COMPONENT;

									-- signals to stimulate UUT inputs
									SIGNAL SA, SB, G1, G2 : std_logic;
									SIGNAL C1, C2 : std_logic_vector(3 DOWNTO 0);

									-- signals to read UUT outputs
									SIGNAL Y1, Y2 : std_logic;
									SIGNAL Y21, Y22 : std_logic;
									SIGNAL Y31, Y32 : std_logic;

									CONSTANT clk_period : TIME := 100 ns;
									FOR UUT1 : mux2 USE ENTITY work.mux2(df);
										FOR UUT2 : mux2 USE ENTITY work.mux2(struct);
											FOR UUT3 : mux2 USE ENTITY work.mux2(behv);
											BEGIN
												-- Unit Under Test (UUT ) instance
												UUT1 : mux2
												PORT MAP(
													SA => SA, 
													SB => SB, 
													G1 => G1, 
													G2 => G2, 
													C1 => C1, 
													C2 => C2, 
													Y2 => Y2, 
													Y1 => Y1
												);
												UUT2 : mux2
												PORT MAP(
													SA => SA, 
													SB => SB, 
													G1 => G1, 
													G2 => G2, 
													C1 => C1, 
													C2 => C2, 
													Y2 => Y22, 
													Y1 => Y21
												);
												UUT3 : mux2
												PORT MAP(
													SA => SA, 
													SB => SB, 
													G1 => G1, 
													G2 => G2, 
													C1 => C1, 
													C2 => C2, 
													Y2 => Y32, 
													Y1 => Y31
												);

												-- stimulus CLK
												G1 <= '0';
												G2 <= '0';

												-- stimulus C1
												stimulusC1 : PROCESS
												BEGIN
													C1 <= "1110"; -- at 0 ns
													WAIT FOR clk_period; 
													C1 <= "0001"; -- at 100 ns
													WAIT FOR clk_period;
													C1 <= "1101";
													WAIT FOR clk_period;
													C1 <= "0010";
													WAIT FOR clk_period;
													C1 <= "1011";
													WAIT FOR clk_period;
													C1 <= "0100";
													WAIT FOR clk_period;
													C1 <= "0111";
													WAIT FOR clk_period;
													C1 <= "1000";
													WAIT;
												END PROCESS;
 
												stimulusC2 : PROCESS
												BEGIN
													C2 <= "1110"; -- at 0 ns
													WAIT FOR clk_period; 
													C2 <= "0001"; -- at 100 ns
													WAIT FOR clk_period;
													C2 <= "1101";
													WAIT FOR clk_period;
													C2 <= "0010";
													WAIT FOR clk_period;
													C2 <= "1011";
													WAIT FOR clk_period;
													C2 <= "0100";
													WAIT FOR clk_period;
													C2 <= "0111";
													WAIT FOR clk_period;
													C2 <= "1000";
													WAIT;
												END PROCESS;
 
												-- stimulus SB
												stimulusSB : PROCESS
												BEGIN
													SB <= '0'; -- at 0 ns
													WAIT FOR clk_period;
													SB <= '0'; -- at 100 ns
													WAIT FOR clk_period;
													SB <= '0';
													WAIT FOR clk_period;
													SB <= '0';
													WAIT FOR clk_period;
													SB <= '1';
													WAIT FOR clk_period;
													SB <= '1';
													WAIT FOR clk_period;
													SB <= '1';
													WAIT FOR clk_period;
													SB <= '1';
													WAIT;
												END PROCESS;

												-- stimulus SA
												stimulusSA : PROCESS
												BEGIN
													SA <= '0'; -- at 0 ns
													WAIT FOR clk_period;
													SA <= '0'; -- at 100 ns
													WAIT FOR clk_period;
													SA <= '1';
													WAIT FOR clk_period;
													SA <= '1';
													WAIT FOR clk_period;
													SA <= '0';
													WAIT FOR clk_period;
													SA <= '0';
													WAIT FOR clk_period;
													SA <= '1';
													WAIT FOR clk_period;
													SA <= '1';
													WAIT;
												END PROCESS;
END;
