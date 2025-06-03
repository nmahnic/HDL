library ieee;
use ieee.std_logic_1164.all;

entity mux_2x1_gate_tb is
end entity;

architecture test of mux_2x1_gate_tb is
    signal a, b, s, y : std_logic;
begin
    uut: entity work.mux_2x1_gate
        port map(
            p0 => a,
            p1 => b,
            s => s,
            y => y
        );

    process
    begin
        a <= '0'; b <= '0'; s <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; s <= '0'; wait for 10 ns;
        a <= '1'; b <= '0'; s <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; s <= '0'; wait for 10 ns;
        a <= '0'; b <= '0'; s <= '1'; wait for 10 ns;
        a <= '0'; b <= '1'; s <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; s <= '1'; wait for 10 ns;
        a <= '1'; b <= '1'; s <= '1'; wait for 10 ns;
        wait;
    end process;
end architecture;