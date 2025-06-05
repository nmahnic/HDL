library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter4bits is
    port(
        clk: in std_logic;
        rst: in std_logic;
        S: out std_logic_vector(3 downto 0);
        co: out std_logic
    );
end counter4bits;

architecture behavior of counter4bits is
    signal count: unsigned(3 downto 0);
    signal max_count: std_logic;

    component ff_d
        port(
            clk: in std_logic;
            rst: in std_logic;
            d: in std_logic;
            q: out std_logic;
            n_q: out std_logic
        );
    end component;
begin
    ff_0: ff_d
        port map(
            clk => clk,
            d => max_count,
            rst => rst,
            q => co,
            n_q => open
        );

    process(clk, rst)
    begin
        if(rst = '1') then count <= (others => '0');
        elsif (rising_edge(clk)) then count <= count + 1;
        end if;
    end process;

    S <= std_logic_vector(count);
    max_count <= '1' when count = "1111" else '0';
end behavior;