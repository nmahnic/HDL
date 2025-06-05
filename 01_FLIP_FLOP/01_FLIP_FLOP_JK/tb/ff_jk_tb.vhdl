library ieee;
use ieee.std_logic_1164.all;

entity ff_jk_tb is
end entity;

architecture test of ff_jk_tb is
    signal clk, rst, j, k, q, n_q: std_logic;
begin
    uut: entity work.ff_jk
        port map(
            rst => rst,
            clk => clk,
            k => k,
            j => j,
            q => q,
            n_q => n_q
        );

    process
    begin
        rst <= '0';
        k <= '1'; j <= '1'; wait for 1 ns;
        k <= '1'; j <= '0'; wait for 1 ns;
        k <= '0'; j <= '1'; wait for 1 ns;
        k <= '0'; j <= '0'; wait for 1 ns;
        k <= '1'; j <= '0'; wait for 1 ns;
        k <= '0'; j <= '0'; wait for 1 ns;
        k <= '1'; j <= '1'; wait for 1 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '1'; j <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '1'; j <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '0'; j <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '0'; j <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '1'; j <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '0'; j <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '1'; j <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        rst <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '1'; j <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '1'; j <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '0'; j <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '0'; j <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '1'; j <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '0'; j <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        k <= '1'; j <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        wait;
    end process;
end test;