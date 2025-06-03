library ieee;
use ieee.std_logic_1164.all;

entity nested_mux_4x1_gate_tb is
end entity;

architecture test of nested_mux_4x1_gate_tb is
    signal a, b, c, d, y : std_logic;
    signal sel: std_logic_vector(1 downto 0);
begin
    uut: entity work.nested_mux_4x1_gate
        port map(
            p0 => a,
            p1 => b,
            p2 => c,
            p3 => d,
            sel => sel,
            y => y
        );

    process
    begin
        a <= '0'; b <= '0'; c <= '0'; d <= '0' ; sel <= "00"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '0'; d <= '1' ; sel <= "00"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '1'; d <= '0' ; sel <= "00"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '1'; d <= '1' ; sel <= "00"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '0'; d <= '0' ; sel <= "00"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '0'; d <= '1' ; sel <= "00"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '1'; d <= '0' ; sel <= "00"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '1'; d <= '1' ; sel <= "00"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '0'; d <= '0' ; sel <= "00"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '0'; d <= '1' ; sel <= "00"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '1'; d <= '0' ; sel <= "00"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '1'; d <= '1' ; sel <= "00"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '0'; d <= '0' ; sel <= "00"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '0'; d <= '1' ; sel <= "00"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '1'; d <= '0' ; sel <= "00"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '1'; d <= '1' ; sel <= "00"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '0'; d <= '0' ; sel <= "01"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '0'; d <= '1' ; sel <= "01"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '1'; d <= '0' ; sel <= "01"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '1'; d <= '1' ; sel <= "01"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '0'; d <= '0' ; sel <= "01"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '0'; d <= '1' ; sel <= "01"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '1'; d <= '0' ; sel <= "01"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '1'; d <= '1' ; sel <= "01"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '0'; d <= '0' ; sel <= "01"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '0'; d <= '1' ; sel <= "01"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '1'; d <= '0' ; sel <= "01"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '1'; d <= '1' ; sel <= "01"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '0'; d <= '0' ; sel <= "01"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '0'; d <= '1' ; sel <= "01"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '1'; d <= '0' ; sel <= "01"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '1'; d <= '1' ; sel <= "01"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '0'; d <= '0' ; sel <= "10"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '0'; d <= '1' ; sel <= "10"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '1'; d <= '0' ; sel <= "10"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '1'; d <= '1' ; sel <= "10"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '0'; d <= '0' ; sel <= "10"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '0'; d <= '1' ; sel <= "10"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '1'; d <= '0' ; sel <= "10"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '1'; d <= '1' ; sel <= "10"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '0'; d <= '0' ; sel <= "10"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '0'; d <= '1' ; sel <= "10"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '1'; d <= '0' ; sel <= "10"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '1'; d <= '1' ; sel <= "10"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '0'; d <= '0' ; sel <= "10"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '0'; d <= '1' ; sel <= "10"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '1'; d <= '0' ; sel <= "10"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '1'; d <= '1' ; sel <= "10"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '0'; d <= '0' ; sel <= "11"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '0'; d <= '1' ; sel <= "11"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '1'; d <= '0' ; sel <= "11"; wait for 1 ns;
        a <= '0'; b <= '0'; c <= '1'; d <= '1' ; sel <= "11"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '0'; d <= '0' ; sel <= "11"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '0'; d <= '1' ; sel <= "11"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '1'; d <= '0' ; sel <= "11"; wait for 1 ns;
        a <= '0'; b <= '1'; c <= '1'; d <= '1' ; sel <= "11"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '0'; d <= '0' ; sel <= "11"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '0'; d <= '1' ; sel <= "11"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '1'; d <= '0' ; sel <= "11"; wait for 1 ns;
        a <= '1'; b <= '0'; c <= '1'; d <= '1' ; sel <= "11"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '0'; d <= '0' ; sel <= "11"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '0'; d <= '1' ; sel <= "11"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '1'; d <= '0' ; sel <= "11"; wait for 1 ns;
        a <= '1'; b <= '1'; c <= '1'; d <= '1' ; sel <= "11"; wait for 1 ns;

        wait;
    end process;
end architecture;