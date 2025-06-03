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
    signal s_n: std_logic;
    signal p1_and_s: std_logic;
    signal p0_and_s_n: std_logic;
begin
    s_n <= not s;
    p1_and_s <= p1 and s;
    p0_and_s_n <= p0 and s_n;
    y <= p1_and_s or p0_and_s_n;
end architecture;