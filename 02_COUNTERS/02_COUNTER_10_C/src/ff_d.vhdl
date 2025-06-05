library ieee;
use ieee.std_logic_1164.all;

entity ff_d is 
    port(
        clk: in std_logic;
        rst: in std_logic;
        d: in std_logic;
        q: out std_logic;
        n_q: out std_logic
    );
end ff_d;

architecture behavior of ff_d is
    signal q_signal: std_logic;
begin
	process(rst, clk)
    begin
        if(rst = '1') then q_signal <= '0';
        elsif(rising_edge(clk)) then q_signal <= d;
        end if;
    end process;
    q <= q_signal;
    n_q <= not q_signal;
end behavior;
