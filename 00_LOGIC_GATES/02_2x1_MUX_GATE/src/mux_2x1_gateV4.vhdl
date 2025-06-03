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
    p_mux: process (s, p0, p1)
    begin
        if s = '0' then
            y <= p0;
        else 
            y <= p1;
        end if;
    end process;
end architecture;