library ieee;
use ieee.std_logic_1164.all;

entity full_adder is 
    port(
        a: in std_logic;
        b: in std_logic;
        s: out std_logic;
        co: out std_logic;
        ci: in std_logic
    );
end full_adder;

architecture behavior of full_adder is
    signal a_xor_b : std_logic;
begin
    a_xor_b <= a xor b;
    co <= (a and b) or (ci and a_xor_b);
    s <= ci xor a_xor_b;
end behavior;
