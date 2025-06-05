library ieee;
use ieee.std_logic_1164.all;

entity counter2bits is
    port(
        clk: in std_logic;
        rst: in std_logic;
        S: out std_logic_vector(1 downto 0)
    );
end counter2bits;

architecture behavior of counter2bits is
    signal q0: std_logic;

    component ff_t
        port(
            clk: in std_logic;
            rst: in std_logic;
            t: in std_logic;
            q: out std_logic;
            n_q: out std_logic
        );
    end component;
begin
    ff_0: ff_t
        port map(
            clk => clk,
            rst => rst,
            t => '1',
            q => open,
            n_q => q0
        );

    ff_1: ff_t
        port map(
            clk => q0,
            rst => rst,
            t => '1',
            q => open,
            n_q => S(1)
        );

    S(0) <= q0;
end behavior;