LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity counter_16_bit is
	port (rst : in std_logic;
			clk : in std_logic;
			state_out : out std_logic_vector (15 downto 0));
end counter_16_bit;

architecture behv of counter_16_bit is
begin
	process(clk, rst)
		variable state_var : unsigned (15 downto 0);
	begin
		if rst = '0' then
			state_var := X"0000";
		elsif rising_edge(clk) then
			state_var := state_var + 1;
		end if;
		state_out <= std_logic_vector(state_var);
	end process;
end architecture;

