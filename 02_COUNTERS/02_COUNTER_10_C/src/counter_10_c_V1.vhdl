library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter10c is
    port(
        clk: in std_logic;
        rst: in std_logic;
        S: out std_logic_vector(3 downto 0);
        co: out std_logic
    );
end counter10c;

architecture behavior of counter10c is
    signal count: unsigned(3 downto 0);
    signal max_count: std_logic;
    signal internal_rst: std_logic;
    signal internal_co: std_logic;

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
            d => internal_co,
            rst => rst,
            q => co,
            n_q => open
        );

    process(clk, internal_rst)
    begin
        if(internal_rst = '1') then count <= (others => '0');
        elsif (rising_edge(clk)) then count <= count + 1;
        end if;
    end process;

    S <= std_logic_vector(count);
    max_count <= '1' when count = "1010" else '0';
    internal_rst <= rst or max_count;
    internal_co <= '1' when count = "1001" else '0';
    
end behavior;