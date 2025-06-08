library ieee;
use ieee.std_logic_1164.all;

entity bank_regs_2_1_bit_tb is
end entity;

architecture test of bank_regs_2_1_bit_tb is
    signal clk, rst, wr, q : std_logic;
    signal d, addr : std_logic;

begin

    uut: entity work.bank_regs_2_1_bit
        port map(
            clk => clk,
            rst => rst,
            d => d,
            wr => wr,
            addr => addr,
            q => q
        );

    process
    begin
        addr <= '0';
        rst <= '0'; wait for 0.5 ps;
        rst <= '1';
        clk <= '1'; wait for 0.5 ps;
        rst <= '0';
        clk <= '0'; wait for 0.5 ps;
        clk <= '1'; d <= '1'; wait for 0.5 ps;
        clk <= '0'; d <= '0'; wait for 0.5 ps;
        clk <= '1'; d <= '1'; wr <= '1'; wait for 0.5 ps;
        clk <= '0'; wr <= '0'; wait for 0.5 ps;
        clk <= '1'; wait for 0.5 ps;
        clk <= '0'; wait for 0.5 ps;
        clk <= '1'; d <= '0'; wr <= '1'; wait for 0.5 ps;
        clk <= '0'; wr <= '0'; wait for 0.5 ps;
        clk <= '1'; wait for 0.5 ps;
        clk <= '1'; d <= '1'; wait for 0.5 ps;
        clk <= '0'; d <= '0'; wait for 0.5 ps;

        clk <= '1'; d <= '1'; wr <= '1'; wait for 0.5 ps;
        clk <= '0'; wr <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        clk <= '1'; d <= '0'; wr <= '1'; wait for 0.5 ps;
        clk <= '0'; wr <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        clk <= '1'; d <= '1'; wr <= '1'; wait for 0.5 ps;
        clk <= '0'; d <= '0'; wr <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        clk <= '1'; d <= '0'; wr <= '1'; wait for 0.5 ps;
        clk <= '0'; d <= '1'; wr <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        wait;
    end process;

end architecture;