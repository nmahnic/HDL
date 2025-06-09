library ieee;
use ieee.std_logic_1164.all;

entity bank_regs_N_1_bit is
    generic (
        ADDR_WIDTH : integer := 3;
        NUM_REGS  : integer := 8
    );
    port(
        clk  : in std_logic;
        rst  : in std_logic;
        wr   : in std_logic;
        ADDR : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        d    : in std_logic;
        q    : out std_logic
    );
end bank_regs_N_1_bit;

architecture behavior of bank_regs_N_1_bit is
    signal Q_reg : std_logic_vector(NUM_REGS-1 downto 0);
    signal L_reg : std_logic_vector(NUM_REGS-1 downto 0);

    component register_1_bit
        port(
            clk : in std_logic;
            rst : in std_logic;
            d   : in std_logic;
            l   : in std_logic;
            q   : out std_logic
        );
    end component;

    component demux_1_N
        port (
            d    : in std_logic;
            ADDR : in std_logic_vector(ADDR_WIDTH-1 downto 0);
            Q    : out std_logic_vector(NUM_REGS-1 downto 0)
        );
    end component;

    component mux_N_1
        port (
            D    : in std_logic_vector(NUM_REGS-1 downto 0);
            ADDR : in std_logic_vector(ADDR_WIDTH-1 downto 0);
            q    : out std_logic
        );
    end component;

begin

    gen_regs: for i in 0 to NUM_REGS-1 generate
    reg_i: register_1_bit
        port map(
            clk => clk,
            rst => rst,
            d => d,
            l => L_reg(i),
            q => Q_reg(i)
        );
    end generate;

    demux: demux_1_N
        port map(
            d => wr,
            ADDR => ADDR,
            Q => L_reg
        );

    mux: mux_N_1
        port map(
            D => Q_reg,
            ADDR => ADDR,
            q => q
        );

end behavior;