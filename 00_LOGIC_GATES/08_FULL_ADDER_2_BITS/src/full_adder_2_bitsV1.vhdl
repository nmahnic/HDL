library ieee;
use ieee.std_logic_1164.all;

entity full_adder_2_bits is 
    port(
        A: in std_logic_vector(1 downto 0);
        B: in std_logic_vector(1 downto 0);
        S: out std_logic_vector(1 downto 0);
        co: out std_logic;
        ci: in std_logic
    );
end full_adder_2_bits;

architecture behavior of full_adder_2_bits is
    signal fa_co_0 : std_logic;

    component full_adder
        port(
            a: in std_logic;
            b: in std_logic;
            ci: in std_logic;
            co: out std_logic;
            s: out std_logic
        );
    end component;
begin
    fa_0: full_adder
        port map(
            a => A(0),
            b => B(0),
            ci => ci,
            s => S(0),
            co => fa_co_0
        );

    fa_1: full_adder
        port map(
            a => A(1),
            b => B(1),
            ci => fa_co_0,
            s => S(1),
            co => co
        );
end behavior;
