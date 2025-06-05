library ieee;
use ieee.std_logic_1164.all;

entity ff_t is
    port(
        clk: in std_logic;
        rst: in std_logic;
        t: in std_logic;
        q: out std_logic;
        n_q: out std_logic
    );
end ff_t;

architecture behavior of ff_t is
    signal q_signal : std_logic;
begin
    process(clk, rst)
    begin
        if(rst='1') then q_signal <='0';
        elsif(rising_edge(clk)) then
            if(t = '1') then q_signal <= not q_signal;
            end if;
        end if;
    end process;
    q <= q_signal;
    n_q <= not q_signal;
end behavior;            