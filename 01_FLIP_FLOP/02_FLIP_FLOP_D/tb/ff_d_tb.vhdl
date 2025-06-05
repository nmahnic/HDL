library ieee;
use ieee.std_logic_1164.all;

entity ff_d_tb is
end entity;

architecture test of ff_d_tb is
    signal clk, rst, d, q: std_logic;
begin
    uut: entity work.ff_d
        port map(
            clk => clk,
            rst => rst,
            d => d,
            q => q
        );

    process
    begin
        rst <= '0';
        d <= '1'; wait for 1 ns;
        d <= '0'; wait for 1 ns;
        d <= '1'; wait for 1 ns;
        d <= '0'; wait for 1 ns;
        d <= '1'; wait for 1 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;

        rst <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '0'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        d <= '1'; clk <= '0'; wait for 0.5 ns;
        clk <= '1'; wait for 0.5 ns;
        wait;
    end process;
end test;