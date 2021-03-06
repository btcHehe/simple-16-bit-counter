LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity demux is
	port(addr : in std_logic_vector(1 downto 0);
		sel_out : out std_logic_vector(3 downto 0));
end demux;

architecture behv of demux is
begin
	process(addr)
	begin
		if addr = "00" then
			sel_out(0) <= '1';
			sel_out(3 downto 1) <= "000";
		elsif addr = "01" then
			sel_out(0) <= '0';
			sel_out(1) <= '1';
			sel_out(3 downto 2) <= "00";
		elsif addr = "10" then
			sel_out(1 downto 0) <= "00";
			sel_out(2) <= '1';
			sel_out(3) <= '0';
		elsif addr = "11" then
			sel_out(2 downto 0) <= "000";
			sel_out(3) <= '1';
		end if;
	end process;
end architecture behv;
