library ieee;
use ieee.std_logic_1164.all;

entity register_1_bit_tb is
end entity;

architecture test of register_1_bit_tb is
    signal clk, rst, d, l, q : std_logic;
begin

    uut: entity work.register_1_bit
        port map(
            clk => clk,
            rst => rst,
            d => d,
            l => l,
            q => q
        );

    process 
    begin
        rst <= '0'; wait for 0.5 ps;
        rst <= '1';
        clk <= '1'; wait for 0.5 ps;
        rst <= '0';
        clk <= '0'; wait for 0.5 ps;
        clk <= '1'; d <= '1'; wait for 0.5 ps;
        clk <= '0'; d <= '0'; wait for 0.5 ps;
        clk <= '1'; d <= '1'; l <= '1'; wait for 0.5 ps;
        clk <= '0'; l <= '0'; wait for 0.5 ps;
        clk <= '1'; wait for 0.5 ps;
        clk <= '0'; wait for 0.5 ps;
        clk <= '1'; d <= '0'; l <= '1'; wait for 0.5 ps;
        clk <= '0'; l <= '0'; wait for 0.5 ps;
        clk <= '1'; wait for 0.5 ps;
        
        
        clk <= '0'; rst <= '0'; wait for 0.5 ps;
        rst <= '1';
        clk <= '1'; wait for 0.5 ps;
        rst <= '0';
        clk <= '0'; wait for 0.5 ps;

        clk <= '1'; d <= '1'; wait for 0.5 ps;
        clk <= '0'; d <= '0'; wait for 0.5 ps;

        clk <= '1'; d <= '1'; l <= '1'; wait for 0.5 ps;
        clk <= '0'; l <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        clk <= '1'; d <= '0'; l <= '1'; wait for 0.5 ps;
        clk <= '0'; l <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        clk <= '1'; d <= '1'; l <= '1'; wait for 0.5 ps;
        clk <= '0'; d <= '0'; l <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        clk <= '1'; d <= '0'; l <= '1'; wait for 0.5 ps;
        clk <= '0'; d <= '1'; l <= '0'; wait for 0.5 ps;

        for i in 0 to 10 loop
            clk <= '1'; wait for 0.5 ps;
            clk <= '0'; wait for 0.5 ps;
        end loop;

        wait;
    end process;

end architecture;
