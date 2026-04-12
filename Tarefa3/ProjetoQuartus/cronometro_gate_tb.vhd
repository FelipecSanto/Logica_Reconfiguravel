library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cronometro_gate_tb is
end entity cronometro_gate_tb;

architecture tb of cronometro_gate_tb is
    constant CLK_PERIOD : time := 10 ms;
    constant BUTTON_HOLD : time := 40 ms;
    constant SETTLE_TIME : time := 20 ms;

    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal btn_play_pause : std_logic := '0';
    signal btn_reset : std_logic := '0';
    signal q_cs  : std_logic_vector(7 downto 0);
    signal q_s   : std_logic_vector(7 downto 0);
    signal hex0  : std_logic_vector(6 downto 0);
    signal hex1  : std_logic_vector(6 downto 0);
    signal hex2  : std_logic_vector(6 downto 0);
    signal hex3  : std_logic_vector(6 downto 0);
    signal clk2 : std_logic;
    signal clk3 : std_logic;
    signal clk4 : std_logic;
    signal rst_sig1 : std_logic;
    signal rst_sig2 : std_logic;

begin
    dut : entity work.cronometro
        port map (
            CLK => clk,
            RST => rst,
            EN  => '1',
            CLR => '0',
            BTN_PLAY_PAUSE => btn_play_pause,
            BTN_RESET => btn_reset,
            Q_cs  => q_cs,
            Q_s   => q_s,
            HEX0  => hex0,
            HEX1  => hex1,
            HEX2  => hex2,
            HEX3  => hex3,
            CLK2 => clk2,
            CLK3 => clk3,
            CLK4 => clk4,
            RST_SIG1 => rst_sig1,
            RST_SIG2 => rst_sig2
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
    begin
        btn_play_pause <= '0';
        btn_reset <= '0';
        rst <= '1';
        wait for 2 * CLK_PERIOD;
        rst <= '0';
        wait for 2 * CLK_PERIOD;

        btn_play_pause <= '1';
        wait for BUTTON_HOLD;
        btn_play_pause <= '0';
        wait for SETTLE_TIME;

        btn_play_pause <= '1';
        wait for BUTTON_HOLD;
        btn_play_pause <= '0';
        wait for SETTLE_TIME;

        wait for 2 * SETTLE_TIME;

        btn_reset <= '1';
        wait for BUTTON_HOLD;
        btn_reset <= '0';
        wait for SETTLE_TIME;

        btn_play_pause <= '1';
        wait for BUTTON_HOLD;
        btn_play_pause <= '0';
        wait for SETTLE_TIME;

        wait;
    end process;
end architecture tb;
