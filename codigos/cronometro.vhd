library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cronometro is
generic(n: integer :=15);
port(
	rst, clk: in std_logic;
	sec, min: out integer range 0 to n
	);
end cronometro;

architecture behav of cronometro is
signal aux1, aux2, aux3 : std_logic;
	component freqdiv is
	generic( N : integer := 15);
	port(
		clkin, rst : in std_logic;
		clkout : out std_logic
		);
	end component;
	component contador is
	generic( N : integer := 15);
	port(
		rst, clk: in std_logic;
		limite: in integer range 0 to n;
		fim: out std_logic;
		saida: out integer range 0 to n
		);
	end component;

begin
% A frequencia real de uso sera de 25000000, e dos contadores 60 %

	i0: freqdiv generic map(10) port map (clk,rst,aux1);
	i1: contador generic map(10) port map (rst,aux1,n,aux2,sec);
	i2: contador generic map(10) port map (rst,aux2,n,aux3,min);
end behav;