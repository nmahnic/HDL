library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux_1_N is
    generic (ADDR_WIDTH : integer := 3);
    port (
        d    : in std_logic;
        ADDR : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        Q    : out std_logic_vector((2**ADDR_WIDTH)-1 downto 0)
    );
end entity;

architecture behavioral of demux_1_N is
begin
    process(ADDR)
    begin
        Q(to_integer(unsigned(ADDR))) <= d;
    end process;
end architecture;
