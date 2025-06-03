library ieee;
use ieee.std_logic_1164.all;

entity or_gate_tb is
end entity;

architecture test of or_gate_tb is
    signal a, b, y : std_logic;
begin
    uut: entity work.or_gate
        port map(
            a => a,
            b => b,
            y => y
        );

    process
    begin
        a <= '0'; b <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; wait for 10 ns;
        wait;
    end process;
end architecture;