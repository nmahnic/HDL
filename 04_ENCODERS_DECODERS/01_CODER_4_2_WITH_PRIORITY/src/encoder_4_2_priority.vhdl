library ieee;
use ieee.std_logic_1164.all;

entity encoder_4_2_priority is
    port(
        D: in std_logic_vector(3 downto 0);
        O: out std_logic_vector(1 downto 0)
    );
end encoder_4_2_priority;

architecture behavior of encoder_4_2_priority is

begin
    O <= "11" when D(3) = '1' else
         "10" when D(2) = '1' else
         "01" when D(1) = '1' else
         "00" when D(0) = '1' else
         (others => 'U');
end behavior;