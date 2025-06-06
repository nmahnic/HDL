library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity min_sec_timer is
    port(
        clk: in std_logic;
        rst: in std_logic;
        S0: out std_logic_vector(3 downto 0);
        S1: out std_logic_vector(3 downto 0);
        S2: out std_logic_vector(3 downto 0);
        S3: out std_logic_vector(3 downto 0)
    );
end min_sec_timer;

architecture behavior of min_sec_timer is
    signal Co: std_logic_vector(2 downto 0);
    signal max_count, internal_rst: std_logic;

    component seconds_timer
    port(
        clk: in std_logic;
        rst: in std_logic;
        S0: out std_logic_vector(3 downto 0);
        S1: out std_logic_vector(3 downto 0);
        c_o: out std_logic
    );
    end component;

    component counter10c
        port(
            clk: in std_logic;
            rst: in std_logic;
            S: out std_logic_vector(3 downto 0);
            co: out std_logic
        );
    end component;

begin

    c0: seconds_timer
        port map(
            clk => clk,
            rst => rst,
            S0 => S0,
            S1 => S1,
            c_o => Co(0)
        );
    
    c2: counter10c
        port map(
            clk => Co(0),
            rst => internal_rst,
            S => S2,
            co => Co(1)
        );

    c3: counter10c
        port map(
            clk => Co(1),
            rst => internal_rst,
            S => S3,
            co => Co(2)
        );

    internal_rst <= rst;

end behavior;
