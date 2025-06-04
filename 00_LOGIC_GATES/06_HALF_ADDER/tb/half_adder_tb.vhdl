library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is
end entity;

architecture test of half_adder_tb is
    signal a, b, s, co : std_logic;
begin
    uut: entity work.half_adder
        port map(
            a => a,
            b => b,
            s => s,
            co => co
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