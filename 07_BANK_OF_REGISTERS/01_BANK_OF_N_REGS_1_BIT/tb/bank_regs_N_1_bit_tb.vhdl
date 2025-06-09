library ieee;
use ieee.std_logic_1164.all;

entity bank_regs_N_1_bit_tb is
    generic(ADDR_WIDTH : integer := 3);
end entity;

architecture test of bank_regs_N_1_bit_tb is
    signal clk : std_logic := '0';
    signal rst, wr, d, q : std_logic;
    signal ADDR: std_logic_vector(ADDR_WIDTH-1 downto 0);
begin

    -- Instancia del UUT
    uut: entity work.bank_regs_N_1_bit
        port map(
            clk  => clk,
            rst  => rst,
            wr   => wr,
            ADDR => ADDR,
            d    => d,
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

        -- Write '1' at addr = '0'
        ADDR <= (others => '0'); 
        d <= '1'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        ADDR <= (others => '0'); wait for 10 ps; -- Read at addr = '0
        ADDR <= (others => '1'); wait for 10 ps; -- Read at addr = '1'

        -- Write '0' at addr = '0'
        d <= '0'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        ADDR <= (others => '0'); wait for 10 ps; -- Read at addr = '0
        ADDR <= (others => '1'); wait for 10 ps; -- Read at addr = '1'

        -- Write '1' at addr = '0'
        d <= '1'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        ADDR <= (others => '0'); wait for 10 ps; -- Read at addr = '0
        ADDR <= (others => '1'); wait for 10 ps; -- Read at addr = '1'

        wait for 50 ps;

        -- Write '1' at addr = '1'
        ADDR <= (others => '1'); 
        d <= '1'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        ADDR <= (others => '0'); wait for 10 ps; -- Read at addr = '0
        ADDR <= (others => '1'); wait for 10 ps; -- Read at addr = '1'

        -- Write '0' at addr = '1'
        d <= '0'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        ADDR <= (others => '0'); wait for 10 ps; -- Read at addr = '0
        ADDR <= (others => '1'); wait for 10 ps; -- Read at addr = '1'

        -- Write '1' at addr = '1'
        d <= '1'; wr <= '1'; wait for 10 ps;
        wr <= '0'; wait for 10 ps;

        ADDR <= (others => '0'); wait for 10 ps; -- Read at addr = '0
        ADDR <= (others => '1'); wait for 10 ps; -- Read at addr = '1'

        -- Fin de simulación
        wait;
    end process;

end architecture;
