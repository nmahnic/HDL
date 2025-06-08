library ieee;
use ieee.std_logic_1164.all;

entity register_1_bit is
    port(
        clk: in std_logic;
        rst: in std_logic;
        d: in std_logic;
        l: in std_logic;
        q: out std_logic
    );
end register_1_bit;

architecture behavior of register_1_bit is
    signal ff_q : std_logic; 
    signal mux_q : std_logic := '0';

    component mux_2x1_gate
        port(
            p0: in std_logic;
            p1: in std_logic;
            s: in std_logic;
            y: out std_logic
        );
    end component;

    component ff_d
        port(
            clk: in std_logic;
            rst: in std_logic;
            d: in std_logic;
            q: out std_logic;
            n_q: out std_logic
        );
    end component;

begin

    mux: mux_2x1_gate
        port map(
            s => l,
            p0 => ff_q,
            p1 => d,
            y => mux_q
        );

    ff: ff_d
        port map(
            clk => clk,
            rst => rst,
            d => mux_q,
            q => ff_q,
            n_q => open
        );

    q <= ff_q;

end behavior;