library ieee;
use ieee.std_logic_1164.all;

entity ff_t_tb is
end entity;

architecture test of ff_t_tb is
    signal clk, rst, t, q, n_q: std_logic;
begin
    uut: entity work.ff_t
        port map(
            rst => rst,
            clk => clk,
            t => t,
            q => q,
            n_q => n_q
        );

    process
    begin
        rst <= '0';
        t <= '0';  wait for 1 ns;
        t <= '1';  wait for 1 ns;
        t <= '0';  wait for 1 ns;
        rst <= '1';
        t <= '1';  wait for 1 ns;
        rst <= '0';
        t <= '1';  wait for 1 ns;
        t <= '0';  wait for 1 ns;
        t <= '0';  wait for 1 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '1';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '1';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '0';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '0';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '1';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '0';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '1';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        rst <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '1';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '1';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '0';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '0';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '1';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '0';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        t <= '1';  clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        wait;
    end process;
end test;