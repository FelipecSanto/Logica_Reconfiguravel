library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo_tb is
end entity;

architecture sim of fifo_tb is
    constant CLK_PERIOD : time := 10 ns;

    signal clk   : std_logic := '0';
    signal rst   : std_logic := '1';
    signal wr_en : std_logic := '0';
    signal rd_en : std_logic := '0';
    signal din   : std_logic_vector(7 downto 0) := (others => '0');
    signal dout  : std_logic_vector(7 downto 0);
    signal full  : std_logic;
    signal empty : std_logic;
    signal usedw : unsigned(10 downto 0);
begin
    clk <= not clk after CLK_PERIOD / 2;

    dut : entity work.fifo
        port map (
            clk => clk,
            rst => rst,
            wr_en => wr_en,
            rd_en => rd_en,
            din => din,
            dout => dout,
            full => full,
            empty => empty,
            usedw => usedw
        );

    stim : process
    begin
        rst <= '1';
        wr_en <= '0';
        rd_en <= '0';
        wait for CLK_PERIOD * 2;

        rst <= '0';
        wr_en <= '1';
        for i in 0 to 7 loop
            din <= std_logic_vector(to_unsigned((i + 1) * 10, din'length));
            wait for CLK_PERIOD;
        end loop;

        wr_en <= '0';
        rd_en <= '1';
        wait for CLK_PERIOD * 8;

        rd_en <= '0';
        rst <= '1';
        wait for CLK_PERIOD * 2;

        rst <= '0';
        wr_en <= '1';
        rd_en <= '1';
        for i in 0 to 7 loop
            din <= std_logic_vector(to_unsigned((i + 1) * 20, din'length));
            wait for CLK_PERIOD;
        end loop;
        wait;
    end process;
end architecture;