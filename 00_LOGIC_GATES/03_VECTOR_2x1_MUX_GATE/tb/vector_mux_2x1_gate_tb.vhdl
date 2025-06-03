library ieee;
use ieee.std_logic_1164.all;

entity vector_mux_2x1_gate_tb is
end entity;

architecture test of vector_mux_2x1_gate_tb is
    signal s : std_logic;
    signal a, b, y : std_logic_vector(3 downto 0);
begin
    uut: entity work.vector_mux_2x1_gate(behavior2) -- change behavior1 by behavior2
        port map(
            p0 => a,
            p1 => b,
            s => s,
            y => y
        );

    process
    begin
        a <= "0000"; b <= "0000"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "0001"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "0010"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "0011"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "0100"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "0101"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "0110"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "0111"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "1000"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "1001"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "1010"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "1011"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "1100"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "1101"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "1110"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "1111"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "0000"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "0001"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "0010"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "0011"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "0100"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "0101"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "0110"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "0111"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "1000"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "1001"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "1010"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "1011"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "1100"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "1101"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "1110"; s <= '0'; wait for 1 ns;
        b <= "0000"; a <= "1111"; s <= '0'; wait for 1 ns;
        a <= "0000"; b <= "0000"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "0001"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "0010"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "0011"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "0100"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "0101"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "0110"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "0111"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "1000"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "1001"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "1010"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "1011"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "1100"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "1101"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "1110"; s <= '1'; wait for 1 ns;
        a <= "0000"; b <= "1111"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "0000"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "0001"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "0010"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "0011"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "0100"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "0101"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "0110"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "0111"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "1000"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "1001"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "1010"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "1011"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "1100"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "1101"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "1110"; s <= '1'; wait for 1 ns;
        b <= "0000"; a <= "1111"; s <= '1'; wait for 1 ns;
        
        wait;
    end process;
end architecture;