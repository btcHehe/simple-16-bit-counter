LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity decoder7seg is
	port (num : in std_logic_vector (3 downto 0);				-- 4 bit number
			dec_out : out std_logic_vector (6 downto 0));		-- 7 seg display
end decoder7seg;

architecture behv of decoder7seg is
begin
	process(num)
		begin
		if num = "0000" then
			dec_out <= "1111110";
		elsif num = "0001" then
			dec_out <= "0110000";
		elsif num = "0010" then
			dec_out <= "1101101";
		elsif num = "0011" then
			dec_out <= "1111001";
		elsif num = "0100" then
			dec_out <= "0110011";
		elsif num = "0101" then
			dec_out <= "1011011";
		elsif num = "0110" then
			dec_out <= "1011111";
		elsif num = "0111" then
			dec_out <= "1110000";
		elsif num = "1000" then
			dec_out <= "1111111";
		elsif num = "1001" then
			dec_out <= "1111011";
		elsif num = "1010" then
			dec_out <= "1110111";
		elsif num = "1011" then
			dec_out <= "0011111";
		elsif num = "1100" then
			dec_out <= "1001110";
		elsif num = "1101" then
			dec_out <= "0111101";
		elsif num = "1110" then
			dec_out <= "1001111";
		elsif num = "1111" then
			dec_out <= "1000111";
		end if;
	end process;
end architecture behv;
