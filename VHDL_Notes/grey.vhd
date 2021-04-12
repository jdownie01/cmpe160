entity gray_counter is
	port (bcd : in std_logic_vector(3 downto 0);
		gray : out std_logic_vector(3 downto 0);
		illegal : out std_logic);
end entity gray_counter;

architecture oh_behave of grey_counter is
gray_temp : std_logic_vector(3 downto 0);
begin
	gray <= gray_temp;

	--gray(0) <= bcd(1) XOR bcd(0);
	--gray(1) <= bcd(2) XOR bcd(1);
	--gray(2) <= bcd(2) XOR bcd(3);
	--gray(3) <= bcd(3);
	
	process (gray_temp) is begin
		case gray_temp is
			when "1010" | "1100" | "1101" | "1110" | "1111" =>
				illegal <= '1';
			when others => illegal <= '0';
		end case;
	end process;

	grey_temp(0) <= bcd(1) XOR bcd(0);
	grey_temp(1) <= bcd(2) XOR bcd(1);
	grey_temp(2) <= bcd(3) XOR bcd(2);
	grey_temp(3) <= bcd(3);
end;
