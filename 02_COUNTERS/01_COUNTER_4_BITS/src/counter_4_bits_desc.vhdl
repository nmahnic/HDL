library ieee;
use ieee.std_logic_1164.all;

entity counter4bits is
    port(
        clk: in std_logic;
        rst: in std_logic;
        S: out std_logic_vector(3 downto 0);
        co: out std_logic
    );
end counter4bits;

architecture behavior of counter4bits is
    signal n_Q: std_logic_vector(3 downto 0);
    signal min_count: std_logic;

    component ff_t
        port(
            clk: in std_logic;
            rst: in std_logic;
            t: in std_logic;
            q: out std_logic;
            n_q: out std_logic
        );
    end component;

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
    ff_0: ff_t
        port map(
            clk => clk,
            rst => rst,
            t => '1',
            q => open,
            n_q => n_Q(0)
        );

    ff_1: ff_t
        port map(
            clk => n_Q(0),
            rst => rst,
            t => '1',
            q => open,
            n_q => n_Q(1)
        );

    ff_2: ff_t
        port map(
            clk => n_Q(1),
            rst => rst,
            t => '1',
            q => open,
            n_q => n_Q(2)
        );

    ff_3: ff_t
        port map(
            clk => n_Q(2),
            rst => rst,
            t => '1',
            q => open,
            n_q => n_Q(3)
        );

    ff_4: ff_d
        port map(
            clk => clk,
            d => min_count,
            rst => rst,
            q => co,
            n_q => open
        );

    min_count <= not (n_Q(0) or n_Q(1) or n_Q(2) or n_Q(3));

    S(0) <= n_Q(0);
    S(1) <= n_Q(1);
    S(2) <= n_Q(2);
    S(3) <= n_Q(3);
end behavior;