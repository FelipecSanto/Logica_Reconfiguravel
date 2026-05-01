library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bram_tb is
end entity;

architecture sim of bram_tb is
    constant CLK_PERIOD : time := 10 ns;

    signal clk  : std_logic := '0';
    signal rst  : std_logic := '1';
    signal we   : std_logic := '0';
    signal addr : unsigned(10 downto 0) := (others => '0');
    signal din  : std_logic_vector(7 downto 0) := (others => '0');
    signal dout : std_logic_vector(7 downto 0);
begin
    clk <= not clk after CLK_PERIOD / 2;

    dut : entity work.bram
        generic map (
            INIT_SEQUENCE => false
        )
        port map (
            clk => clk,
            rst => rst,
            we => we,
            addr => addr,
            din => din,
            dout => dout
        );

    stim : process
    begin
        rst <= '1';
        we <= '0';
        wait for CLK_PERIOD * 2;

        rst <= '0';
        we <= '1';
        din <= std_logic_vector(to_unsigned(255, din'length));
        addr <= to_unsigned(1, addr'length);
        wait for CLK_PERIOD * 2;

        we <= '0';
        din <= std_logic_vector(to_unsigned(60, din'length));
        addr <= to_unsigned(5, addr'length);
        wait for CLK_PERIOD * 2;

        we <= '1';
        din <= std_logic_vector(to_unsigned(70, din'length));
        addr <= to_unsigned(3, addr'length);
        wait for CLK_PERIOD * 2;

        we <= '0';
        rst <= '1';
        wait for CLK_PERIOD * 2;

        addr <= to_unsigned(1, addr'length);
        wait for CLK_PERIOD * 2;

        addr <= to_unsigned(5, addr'length);
        wait for CLK_PERIOD * 2;

        addr <= to_unsigned(3, addr'length);
        wait for CLK_PERIOD * 2;
        wait;
    end process;
end architecture;