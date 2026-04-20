library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_75_tb is
end entity cont_75_tb;

architecture tb of cont_75_tb is
    constant CLK_PERIOD : time := 1 ms;

    signal clk : std_logic := '0';
    signal clr : std_logic := '0';
    signal rst : std_logic := '0';
    signal en  : std_logic := '0';
    signal q   : std_logic_vector(7 downto 0);
begin
    dut : entity work.cont_75
        port map (
            CLK => clk,
            CLR => clr,
            RST => rst,
            EN  => en,
            Q   => q
        );

    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    stimulus : process
        variable expected : integer := 15;
    begin
        clr <= '1';
        rst <= '0';
        en  <= '0';
        wait for 3 * CLK_PERIOD;
        clr <= '0';
        wait for CLK_PERIOD;

        rst <= '1';
        wait for CLK_PERIOD;
        rst <= '0';
        wait for CLK_PERIOD;

        en <= '1';
        for i in 1 to 75 loop
            wait until rising_edge(clk);
            wait for 10 ns;

            if expected = 89 then
                expected := 15;
            else
                expected := expected + 1;
            end if;
        end loop;

        wait for 1 sec;
        wait;
    end process;
end architecture tb;