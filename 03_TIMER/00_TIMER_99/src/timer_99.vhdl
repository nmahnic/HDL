library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_99 is
    port(
        clk: in std_logic;
        rst: in std_logic;
        S0: out std_logic_vector(3 downto 0);
        S1: out std_logic_vector(3 downto 0);
        c_o: out std_logic
    );
end timer_99;

architecture behavior of timer_99 is
    signal Co: std_logic_vector(2 downto 0);
    signal max_count, internal_rst: std_logic;

    component counter10c
        port(
            clk: in std_logic;
            rst: in std_logic;
            S: out std_logic_vector(3 downto 0);
            co: out std_logic
        );
    end component;

    component counter60c
        port(
            clk: in std_logic;
            rst: in std_logic;
            S: out std_logic_vector(5 downto 0);
            co: out std_logic
        );
    end component;

begin
    c0: counter10c
        port map(
            clk => clk,
            rst => internal_rst,
            S => S0,
            co => Co(0)
        );

    c1: counter10c
        port map(
            clk => Co(0),
            rst => internal_rst,
            S => S1,
            co => Co(1)
        );

    c_o <= Co(1) and Co(0) and clk;
    internal_rst <= rst or (Co(1) and Co(0) and clk);

end behavior;
