library ieee;
use ieee.std_logic_1164.all;

entity nested_mux_3x1_gate is
    port(
        p0: in std_logic;
        p1: in std_logic;
        p2: in std_logic;
        sel: in std_logic_vector(1 downto 0);
        y: out std_logic
    );
end nested_mux_3x1_gate;

architecture behavior of nested_mux_3x1_gate is
    signal out_mux1: std_logic;
begin
    mux_1: entity work.mux_2x1_gateV1
        port map(
            p0 => p1,
            p1 => p2,
            s => sel(1),
            y => out_mux1
        );

    mux_2: entity work.mux_2x1_gateV2
        port map(
            p0 => p0,
            p1 => out_mux1,
            s => sel(0),
            y => y
        );
end architecture;