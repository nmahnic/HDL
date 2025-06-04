library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end entity;

architecture test of full_adder_tb is
    signal a, b, s, co, ci : std_logic;
begin
    uut: entity work.full_adder
        port map(
            a => a,
            b => b,
            s => s,
            co => co,
            ci => ci
        );

    process
    begin
        a <= '0'; b <= '0'; ci <= '0'; wait for 1 ns;
        a <= '0'; b <= '1'; ci <= '0'; wait for 1 ns;
        a <= '1'; b <= '0'; ci <= '0'; wait for 1 ns;
        a <= '1'; b <= '1'; ci <= '0'; wait for 1 ns;
        a <= '0'; b <= '0'; ci <= '1'; wait for 1 ns;
        a <= '0'; b <= '1'; ci <= '1'; wait for 1 ns;
        a <= '1'; b <= '0'; ci <= '1'; wait for 1 ns;
        a <= '1'; b <= '1'; ci <= '1'; wait for 1 ns;
        wait;
    end process;
end architecture;