library ieee;
use ieee.std_logic_1164.all;

entity counter_2_bits_tb is
end entity;

architecture test of counter_2_bits_tb is
    signal clk, rst : std_logic;
    signal S: std_logic_vector(1 downto 0);
begin
    uut: entity work.counter2bits
        port map(
            clk => clk,
            rst => rst,
            S => S
        );

    process
    begin
        rst <= '0'; wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0'; rst <= '1'; wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0'; rst <= '0'; wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0'; rst <= '1'; wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        clk <= '0';  wait for 0.5 ns;
        clk <= '1';  wait for 0.5 ns;
        wait;
    end process;
end architecture;