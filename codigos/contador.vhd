library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
	generic(n: integer :=15);
	port(
		rst, clk: in std_logic;
		limite: in integer range 0 to n;
		fim: out std_logic;
		saida: out integer range 0 to n
		);
end entity;

architecture behav of contador is
signal temp: integer range 0 to n :=0;
begin
process(clk, rst)
begin
	if(rst='1') then
	temp<=0;
	fim<='0';
	elsif(clk'event and clk='1') then
		if(temp=limite) then
		temp<=1;
		fim<='1';
		else 
			temp<=temp+1;
			fim<='0';
		end if;
	end if;
end process;
saida <= temp;
end behav;