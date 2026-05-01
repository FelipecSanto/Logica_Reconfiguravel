library ieee;
use ieee.std_logic_1164.all;

entity circuito_completo_tb is
end entity;

architecture sim of circuito_completo_tb is
    constant CLK_PERIOD : time := 10 ns;

    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal dbg_done : std_logic;
begin
    clk <= not clk after CLK_PERIOD / 2;

    dut : entity work.circuito_completo
        port map (
            clk => clk,
            rst => rst,
            dbg_done => dbg_done
        );

    stim : process
    begin
        rst <= '1';
        wait for CLK_PERIOD * 2;
        
        rst <= '0';
        wait until dbg_done = '1';
        wait;
    end process;
end architecture;