library ieee;
use ieee.std_logic_1164.all;

entity counter_10_c_tb is
end entity;

architecture test of counter_10_c_tb is
    signal clk, rst, co : std_logic;
    signal S: std_logic_vector(3 downto 0);
begin
    uut: entity work.counter10c
        port map(
            clk => clk,
            rst => rst,
            S => S,
            co => co
        );

    process
    begin
        rst <= '0'; wait for 0.5 fs;
        clk <= '1';  wait for 0.5 fs;
        clk <= '0'; rst <= '1'; wait for 0.5 fs;
        clk <= '1';  wait for 0.5 fs;
        clk <= '0'; rst <= '0'; wait for 0.5 fs;
        for i in 0 to 120 loop
            clk <= '1';  wait for 0.5 fs;
            clk <= '0';  wait for 0.5 fs;
        end loop;
        clk <= '1';  wait for 0.5 fs;
        clk <= '0'; rst <= '1'; wait for 0.5 fs;
        clk <= '1';  wait for 0.5 fs;
        clk <= '0';  wait for 0.5 fs;
        clk <= '1';  wait for 0.5 fs;
        wait;
    end process;
end architecture;