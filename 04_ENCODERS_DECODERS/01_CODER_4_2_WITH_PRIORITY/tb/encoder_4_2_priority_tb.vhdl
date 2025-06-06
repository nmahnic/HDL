library ieee;
use ieee.std_logic_1164.all;

entity encoder_4_2_priority_tb is
end entity;

architecture test of encoder_4_2_priority_tb is
    signal D: std_logic_vector(3 downto 0);
    signal O: std_logic_vector(1 downto 0);
begin
    uut: entity work.encoder_4_2_priority
        port map(
            D => D,
            O => O
        );

    process
    begin
        D <= "0000"; wait for 1 ps;
        D <= "0001"; wait for 1 ps;
        D <= "0010"; wait for 1 ps;
        D <= "0011"; wait for 1 ps;
        D <= "0100"; wait for 1 ps;
        D <= "0101"; wait for 1 ps;
        D <= "0110"; wait for 1 ps;
        D <= "0111"; wait for 1 ps;
        D <= "1000"; wait for 1 ps;
        D <= "1001"; wait for 1 ps;
        D <= "1010"; wait for 1 ps;
        D <= "1011"; wait for 1 ps;
        D <= "1100"; wait for 1 ps;
        D <= "1101"; wait for 1 ps;
        D <= "1110"; wait for 1 ps;
        D <= "1111"; wait for 1 ps;
        D <= "0000"; wait for 1 ps;
        wait;
    end process;

end test;