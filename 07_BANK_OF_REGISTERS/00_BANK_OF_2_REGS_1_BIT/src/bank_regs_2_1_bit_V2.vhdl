library ieee;
use ieee.std_logic_1164.all;

entity bank_regs_2_1_bit is
    port(
        clk : in std_logic;
        rst : in std_logic;
        addr: in std_logic;
        wr  : in std_logic;
        d   : in std_logic;
        q   : out std_logic
    );
end bank_regs_2_1_bit;

architecture behavior of bank_regs_2_1_bit is
    signal R_Q : std_logic_vector(1 downto 0);
    signal r0_l, r1_l : std_logic;

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                R_Q <= (others => '0');
            elsif r0_l = '1' then
                R_Q(0) <= d;
            elsif r1_l = '1' then
                R_Q(1) <= d;
            end if;
        end if;
    end process;

    r0_l <= wr when addr = '0' else '0';
    r1_l <= wr when addr = '1' else '0';



    q <= R_Q(0) when addr = '0' else R_Q(1);

end behavior;