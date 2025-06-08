library ieee;
use ieee.std_logic_1164.all;

entity mux_2x1_gate is
    port(
        p0: in std_logic;
        p1: in std_logic;
        s: in std_logic;
        y: out std_logic
    );
end entity;

architecture behavior of mux_2x1_gate is

begin
    y <= p0 when s = '0' else p1;
end architecture;