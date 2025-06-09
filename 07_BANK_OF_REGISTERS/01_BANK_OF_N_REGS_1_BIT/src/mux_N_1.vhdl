library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_N_1 is

    generic (ADDR_WIDTH : integer := 3);
    port (
        ADDR : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        D    : in std_logic_vector((2**ADDR_WIDTH)-1 downto 0);
        q    : out std_logic
    );
end entity;

architecture behavioral of mux_N_1 is

begin
    q <= D(to_integer(unsigned(ADDR)));
end architecture;
