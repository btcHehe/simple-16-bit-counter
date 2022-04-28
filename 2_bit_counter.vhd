LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity counter_2_bit is
	port(rst : in std_logic;
		clk : in std_logic;
		state_out : out std_logic_vector(1 downto 0));
end counter_2_bit;

architecture behv of counter_2_bit is
begin
	process(clk, rst)
		variable state_var : unsigned (1 downto 0);
	begin
		if rst = '0' then
			state_var := "00";
		elsif rising_edge(clk) then
			state_var := state_var + 1;
		end if;
		state_out <= std_logic_vector(state_var);
	end process;
end architecture behv;
