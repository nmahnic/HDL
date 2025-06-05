library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter60c is
    port(
        clk: in std_logic;
        rst: in std_logic;
        S: out std_logic_vector(5 downto 0);
        co: out std_logic
    );
end counter60c;

architecture behavior of counter60c is
    signal count: unsigned(5 downto 0);
    signal max_count: std_logic;
    signal internal_rst: std_logic;

begin
    process(clk, internal_rst)
    begin
        if(internal_rst = '1') then count <= (others => '0');
        elsif (rising_edge(clk)) then count <= count + 1;
        end if;
    end process;

        process(clk)
    begin
        if (rising_edge(clk) and count = "111011") then co <= '1';
        else co <= '0';
        end if;
    end process;

    S <= std_logic_vector(count);
    max_count <= '1' when count = "111100" else '0';
    internal_rst <= rst or max_count;
    
end behavior;