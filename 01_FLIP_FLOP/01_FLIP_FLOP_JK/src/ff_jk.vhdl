library ieee;
use ieee.std_logic_1164.all;

entity ff_jk is 
    port(
        clk: in std_logic;
        rst: in std_logic;
        j,k: in std_logic;
        q: out std_logic;
		n_q: out std_logic
    );
end ff_jk;

architecture behavior of ff_jk is
	signal q_signal : std_logic;
begin
	process(clk,rst)
	begin
		if (rst='1') then q_signal <= '0';
		elsif (rising_edge(clk)) then
			if(j = '1' and j = '1') then q_signal <= not q_signal;
			elsif(j = '1') then q_signal <='1';
			elsif(k = '1') then q_signal <='0';
			end if;
		end if;
	end process;
	q <= q_signal;
	n_q <= not q_signal;
end behavior;
