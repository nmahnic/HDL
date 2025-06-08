library ieee;
use ieee.std_logic_1164.all;

entity ff_d is 
    port(
        clk: in std_logic;
        rst: in std_logic;
        d: in std_logic;
        q: out std_logic;
        n_q: out std_logic
    );
end ff_d;

architecture behavior of ff_d is
    signal q_reg: std_logic := '0';
begin
	process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then 
                q_reg <= '0';
            else 
                q_reg <= d;
            end if;
        end if;
    end process;

    q <= q_reg;
    n_q <= not q_reg;

end behavior;
