library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seconds_timer is
    port(
        clk: in std_logic;
        rst: in std_logic;
        S0: out std_logic_vector(3 downto 0);
        S1: out std_logic_vector(3 downto 0);
        c_o: out std_logic
    );
end seconds_timer;

architecture behavior of seconds_timer is
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

    c4: counter60c
        port map(
            clk => clk,
            rst => rst,
            S => open,
            co => max_count
        );

    internal_rst <= rst or max_count;
    c_o <= max_count;

end behavior;
