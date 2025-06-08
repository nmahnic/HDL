library ieee;
use ieee.std_logic_1164.all;

entity bank_regs_2_1_bit is
    port(
        clk : in std_logic;
        rst : in std_logic;
        addr: in std_logic;
        wr  : in std_logic;
        d   : in std_logic;
        q   : out std_logic
    );
end bank_regs_2_1_bit;

architecture behavior of bank_regs_2_1_bit is
    signal r0_l, r1_l : std_logic;
    signal r0_q, r1_q : std_logic;

    component register_1_bit
        port(
            clk : in std_logic;
            rst : in std_logic;
            d   : in std_logic;
            l   : in std_logic;
            q   : out std_logic
        );
    end component;

begin

    r0_l <= wr when addr = '0' else '0';
    r1_l <= wr when addr = '1' else '0';

    r0: register_1_bit
        port map(
            clk => clk,
            rst => rst,
            d => d,
            l => r0_l,
            q => r0_q
        );

    r1: register_1_bit
        port map(
            clk => clk,
            rst => rst,
            d => d,
            l => r1_l,
            q => r1_q
        );

    q <= r0_q when addr = '0' else r1_q;

end behavior;