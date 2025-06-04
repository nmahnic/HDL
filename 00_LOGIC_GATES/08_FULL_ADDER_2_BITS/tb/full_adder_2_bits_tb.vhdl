library ieee;
use ieee.std_logic_1164.all;

entity full_adder_2_bits_tb is
end entity;

architecture test of full_adder_2_bits_tb is
    signal co, ci : std_logic;
    signal A, B, S: std_logic_vector(1 downto 0);
begin
    uut: entity work.full_adder_2_bits
        port map(
            A => A,
            B => B,
            S => S,
            co => co,
            ci => ci
        );

    process
    begin
        A <= "00"; B <= "00"; ci <= '0'; wait for 1 ns;
        A <= "00"; B <= "01"; ci <= '0'; wait for 1 ns;
        A <= "00"; B <= "10"; ci <= '0'; wait for 1 ns;
        A <= "00"; B <= "11"; ci <= '0'; wait for 1 ns;
        A <= "01"; B <= "00"; ci <= '0'; wait for 1 ns;
        A <= "01"; B <= "01"; ci <= '0'; wait for 1 ns;
        A <= "01"; B <= "10"; ci <= '0'; wait for 1 ns;
        A <= "01"; B <= "11"; ci <= '0'; wait for 1 ns;
        A <= "10"; B <= "00"; ci <= '0'; wait for 1 ns;
        A <= "10"; B <= "01"; ci <= '0'; wait for 1 ns;
        A <= "10"; B <= "10"; ci <= '0'; wait for 1 ns;
        A <= "10"; B <= "11"; ci <= '0'; wait for 1 ns;
        A <= "11"; B <= "00"; ci <= '0'; wait for 1 ns;
        A <= "11"; B <= "01"; ci <= '0'; wait for 1 ns;
        A <= "11"; B <= "10"; ci <= '0'; wait for 1 ns;
        A <= "11"; B <= "11"; ci <= '0'; wait for 1 ns;
        A <= "00"; B <= "00"; ci <= '1'; wait for 1 ns;
        A <= "00"; B <= "01"; ci <= '1'; wait for 1 ns;
        A <= "00"; B <= "10"; ci <= '1'; wait for 1 ns;
        A <= "00"; B <= "11"; ci <= '1'; wait for 1 ns;
        A <= "01"; B <= "00"; ci <= '1'; wait for 1 ns;
        A <= "01"; B <= "01"; ci <= '1'; wait for 1 ns;
        A <= "01"; B <= "10"; ci <= '1'; wait for 1 ns;
        A <= "01"; B <= "11"; ci <= '1'; wait for 1 ns;
        A <= "10"; B <= "00"; ci <= '1'; wait for 1 ns;
        A <= "10"; B <= "01"; ci <= '1'; wait for 1 ns;
        A <= "10"; B <= "10"; ci <= '1'; wait for 1 ns;
        A <= "10"; B <= "11"; ci <= '1'; wait for 1 ns;
        A <= "11"; B <= "00"; ci <= '1'; wait for 1 ns;
        A <= "11"; B <= "01"; ci <= '1'; wait for 1 ns;
        A <= "11"; B <= "10"; ci <= '1'; wait for 1 ns;
        A <= "11"; B <= "11"; ci <= '1'; wait for 1 ns;
        wait;
    end process;
end architecture;