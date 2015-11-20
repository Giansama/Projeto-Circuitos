library ieee;
use ieee.std_logic_1164.all;

entity freqdiv is
	generic( N : integer := 15);
	port( clkin, rst : in std_logic;
			clkout : out std_logic
			);
end freqdiv;

architecture behav of freqdiv is
	component contador is
		generic(n: integer :=15);
		port( rst, clk: in std_logic;
				limite: in integer range 0 to n;
				fim: out std_logic;
				saida: out integer range 0 to n
				);
	end component;
signal fim_aux, clkout_aux : std_logic := '0';
signal saida_aux : integer range 0 to N;
begin
	count0: contador generic map(N) port map(rst,clkin,N,fim_aux,saida_aux);
	
	process(rst,fim_aux)
	begin
		if(rst='1') then
			clkout_aux <= '0';
		elsif(fim_aux'event and fim_aux='1') then
			clkout_aux <= not clkout_aux;
		end if;
	end process;
	
	clkout <= clkout_aux;
end behav;