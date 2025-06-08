library ieee;
use ieee.std_logic_1164.all;

entity register_n_bit is
    generic (N : integer := 8);
    port(
        clk : in std_logic;
        rst : in std_logic;
        D   : in std_logic_vector(N-1 downto 0);
        l   : in std_logic;
        Q   : out std_logic_vector(N-1 downto 0)
    );
end register_n_bit;

architecture behavior of register_n_bit is
    signal Q_reg : std_logic_vector(N-1 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                Q_reg <= (others => '0');
            elsif l = '1' then
                Q_reg <= D;
            end if;
        end if;
    end process;

    Q <= Q_reg;

end behavior;