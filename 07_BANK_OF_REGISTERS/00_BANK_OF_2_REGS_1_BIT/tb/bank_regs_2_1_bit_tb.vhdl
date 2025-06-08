library ieee;
use ieee.std_logic_1164.all;

entity bank_regs_2_1_bit_tb is
end entity;

architecture test of bank_regs_2_1_bit_tb is
    signal clk : std_logic := '0';
    signal rst, wr, d, addr, q : std_logic;
begin

    -- Instancia del UUT
    uut: entity work.bank_regs_2_1_bit
        port map(
            clk  => clk,
            rst  => rst,
            d    => d,
            wr   => wr,
            addr => addr,
            q    => q
        );

    -- Generador de clock
    clk <=  '1' after 5 ps when clk = '0' else
            '0' after 5 ps when clk = '1';

    -- Estímulos
    stim_proc: process
    begin
        -- Reset
        rst <= '0'; wait for 10 ps;
        rst <= '1'; wait for 10 ps;
        rst <= '0'; wait for 10 ps;

        -- At addr = '0'
        -- Write '1'
        addr <= '0'; d <= '1'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        addr <= '0'; wait for 10 ps; -- Read at addr = '0
        addr <= '1'; wait for 10 ps; -- Read at addr = '1'

        -- Write '0'
        d <= '0'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        addr <= '0'; wait for 10 ps; -- Read at addr = '0
        addr <= '1'; wait for 10 ps; -- Read at addr = '1'

        -- Write '0'
        d <= '0'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        addr <= '0'; wait for 10 ps; -- Read at addr = '0
        addr <= '1'; wait for 10 ps; -- Read at addr = '1'

        -- Write '1'
        d <= '1'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        addr <= '0'; wait for 10 ps; -- Read at addr = '0
        addr <= '1'; wait for 10 ps; -- Read at addr = '1'

        -- At addr = '1'
        -- Write '1'
        addr <= '1'; d <= '1'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        addr <= '0'; wait for 10 ps; -- Read at addr = '0
        addr <= '1'; wait for 10 ps; -- Read at addr = '1'

        -- Write '0'
        d <= '0'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        addr <= '0'; wait for 10 ps; -- Read at addr = '0
        addr <= '1'; wait for 10 ps; -- Read at addr = '1'

        -- Write '0'
        d <= '0'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        addr <= '0'; wait for 10 ps; -- Read at addr = '0
        addr <= '1'; wait for 10 ps; -- Read at addr = '1'

        -- Write '1'
        d <= '1'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;


        addr <= '0'; wait for 10 ps; -- Read at addr = '0
        addr <= '1'; wait for 10 ps; -- Read at addr = '1'

        -- Lectura en addr = 1
        addr <= '1'; wait for 20 ps;

        -- Fin de simulación
        wait;
    end process;

end architecture;
