library ieee;
use ieee.std_logic_1164.all;

entity ff_rs_tb is
end entity;

architecture test of ff_rs_tb is
    signal clk, r, s, q, n_q: std_logic;
begin
    uut: entity work.ff_rs
        port map(
            clk => clk,
            r => r,
            s => s,
            q => q,
            n_q => n_q
        );

    process
    begin
        r <= '1'; s <= '1'; wait for 1 ns;
        r <= '1'; s <= '0'; wait for 1 ns;
        r <= '0'; s <= '1'; wait for 1 ns;
        r <= '0'; s <= '0'; wait for 1 ns;
        r <= '1'; s <= '0'; wait for 1 ns;
        r <= '0'; s <= '0'; wait for 1 ns;
        r <= '1'; s <= '1'; wait for 1 ns;
        clk <= '1'; wait for 0.5 ns;
        r <= '1'; s <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        r <= '1'; s <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        r <= '0'; s <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        r <= '0'; s <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        r <= '1'; s <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        r <= '0'; s <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        r <= '1'; s <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        wait;
    end process;
end test;