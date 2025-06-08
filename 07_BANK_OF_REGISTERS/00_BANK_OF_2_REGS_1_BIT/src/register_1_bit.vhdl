library ieee;
use ieee.std_logic_1164.all;

entity register_1_bit is
    port(
        clk : in std_logic;
        rst : in std_logic;
        d   : in std_logic;
        l   : in std_logic;
        q   : out std_logic
    );
end register_1_bit;

architecture behavior of register_1_bit is
    signal q_reg : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                q_reg <= '0';
            elsif l = '1' then
                q_reg <= d;
            end if;
        end if;
    end process;

    q <= q_reg;

end behavior;