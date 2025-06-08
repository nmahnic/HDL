library ieee;
use ieee.std_logic_1164.all;

entity register_n_bit_tb is
    generic (N : integer := 8);
end entity;

architecture test of register_n_bit_tb is
    signal clk, rst, l : std_logic;
    signal D, Q : std_logic_vector(N-1 downto 0);
begin

    uut: entity work.register_n_bit
        port map(
            clk => clk,
            rst => rst,
            D => D,
            l => l,
            Q => Q
        );

    process 
    begin
        rst <= '0'; wait for 0.5 ps;
        rst <= '1';
        clk <= '1'; wait for 0.5 ps;
        rst <= '0';
        clk <= '0'; wait for 0.5 ps;
        clk <= '1'; D <= (others => '1'); wait for 0.5 ps;
        clk <= '0'; D <= (others => '0'); wait for 0.5 ps;
        clk <= '1'; D <= (others => '1'); l <= '1'; wait for 0.5 ps;
        clk <= '0'; l <= '0'; wait for 0.5 ps;
        clk <= '1'; wait for 0.5 ps;
        clk <= '0'; wait for 0.5 ps;
        clk <= '1'; D <= (others => '0'); l <= '1'; wait for 0.5 ps;
        clk <= '0'; l <= '0'; wait for 0.5 ps;
        clk <= '1'; wait for 0.5 ps;

        clk <= '1'; D <= (others => '1'); wait for 0.5 ps;
        clk <= '0'; D <= (others => '0'); wait for 0.5 ps;

        clk <= '1'; D <= (others => '1'); l <= '1'; wait for 0.5 ps;
        clk <= '0'; l <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        clk <= '1'; D <= (others => '0'); l <= '1'; wait for 0.5 ps;
        clk <= '0'; l <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        clk <= '1'; D <= (others => '1'); l <= '1'; wait for 0.5 ps;
        clk <= '0'; D <= (others => '0'); l <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        clk <= '1'; D <= (others => '0'); l <= '1'; wait for 0.5 ps;
        clk <= '0'; D <= (others => '1'); l <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        wait;
    end process;

end architecture;
