library ieee;
use ieee.std_logic_1164.all;

entity seconds_timer_tb is
end entity;

architecture test of seconds_timer_tb is
    signal clk, rst, c_o : std_logic;
    signal S0, S1: std_logic_vector(3 downto 0);
begin
    uut: entity work.seconds_timer
        port map(
            clk => clk,
            rst => rst,
            S0 => S0,
            S1 => S1,
            c_o => c_o
        );

    process
    begin
        rst <= '0'; wait for 0.5 ps;
        rst <= '1';
        clk <= '1';  wait for 0.5 ps;
        rst <= '0';
        clk <= '0'; wait for 0.5 ps;
        clk <= '1'; wait for 0.5 ps;
        clk <= '0'; wait for 0.5 ps;
        for i in 0 to 1000 loop
            clk <= '1';  wait for 0.5 ps;
            clk <= '0';  wait for 0.5 ps;
        end loop;
        clk <= '0'; rst <= '1'; wait for 0.5 ps;
        clk <= '1';  wait for 0.5 ps;
        clk <= '0';  wait for 0.5 ps;
        clk <= '1';  wait for 0.5 ps;
        wait;
    end process;
end architecture;