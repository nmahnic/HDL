library ieee;
use ieee.std_logic_1164.all;

entity encoder_4_2 is
    port(
        D: in std_logic_vector(3 downto 0);
        O: out std_logic_vector(1 downto 0)
    );
end encoder_4_2;

architecture behavior of encoder_4_2 is

begin
    with D select
        O <= "00" when "0001",
             "00" when "0010",
             "00" when "0100",
             "00" when "1000",
             (others => 'U') when others;
end behavior;