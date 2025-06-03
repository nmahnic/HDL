library ieee;
use ieee.std_logic_1164.all;

entity vector_mux_2x1_gate is
    port(
        p0: in std_logic_vector(3 downto 0);
        p1: in std_logic_vector(3 downto 0);
        s: in std_logic;
        y: out std_logic_vector(3 downto 0)
    );
end vector_mux_2x1_gate;

architecture behavior1 of vector_mux_2x1_gate is
begin
    y <= p0 when s = '0' else p1;
end behavior1;

architecture behavior2 of vector_mux_2x1_gate is
begin
    p_mux: process (s, p0, p1)
    begin
        if s = '0' then
            y <= p0;
        else 
            y <= p1;
        end if;
    end process;
end behavior2;