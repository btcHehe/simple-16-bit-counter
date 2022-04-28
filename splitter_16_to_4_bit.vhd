LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity splitter is
	port(input : in std_logic_vector(15 downto 0);
		LbLn : out std_logic_vector(3 downto 0);
		LbHn : out std_logic_vector(3 downto 0);
		HbLn : out std_logic_vector(3 downto 0);
		HbHn : out std_logic_vector(3 downto 0));
end splitter;

architecture behv of splitter is
begin
	LbLn <= input(15 downto 12);
	LbHn <= input(11 downto 8);
	HbLn <= input(3 downto 0);
	HbHn <= input(7 downto 4);
end architecture behv;
