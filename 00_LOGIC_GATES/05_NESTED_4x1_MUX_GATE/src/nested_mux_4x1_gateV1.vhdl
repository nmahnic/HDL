library ieee;
use ieee.std_logic_1164.all;

entity nested_mux_4x1_gate is
    port(
        p0: in std_logic;
        p1: in std_logic;
        p2: in std_logic;
        p3: in std_logic;
        sel: in std_logic_vector(1 downto 0);
        y: out std_logic
    );
end nested_mux_4x1_gate;

architecture behavior of nested_mux_4x1_gate is
    signal out_mux1, out_mux2: std_logic;
begin
    mux_1: entity work.mux_2x1_gateV1
        port map(
            p0 => p2,
            p1 => p3,
            s => sel(0),
            y => out_mux1
        );

    mux_2: entity work.mux_2x1_gateV2
        port map(
            p0 => p0,
            p1 => p1,
            s => sel(0),
            y => out_mux2
        );

    mux_3: entity work.mux_2x1_gateV3
        port map(
            p0 => out_mux2,
            p1 => out_mux1,
            s => sel(1),
            y => y
        );
end architecture;