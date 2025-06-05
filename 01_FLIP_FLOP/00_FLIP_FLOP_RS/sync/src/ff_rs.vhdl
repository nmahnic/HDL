library ieee;
use ieee.std_logic_1164.all;

entity ff_rs is
    port(
        clk: in std_logic;
        r: in std_logic;
        s: in std_logic;
        q: out std_logic;
        n_q: out std_logic
    );
end ff_rs;

architecture behavior of ff_rs is
    signal q_signal : std_logic;
begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(r = '1' and s = '1') then
                q_signal <= 'U';
            elsif(r = '1') then
                q_signal <= '0';
            elsif(s = '1') then
                q_signal <= '1';
            end if;
        end if;
    end process;
    q <= q_signal;
    n_q <= not q_signal;
end behavior;