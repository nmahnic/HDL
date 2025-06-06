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
    process(D)
    begin
        case D is
            when "0001" => O <= "00";
            when "0010" => O <= "01";
            when "0100" => O <= "10";
            when "1000" => O <= "11";
            when others => O <= (others => 'U');
        end case;
    end process;
end behavior;