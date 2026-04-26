library ieee;
use ieee.std_logic_1164.all;

entity sinal_variavel_a_gate_tb is
end entity sinal_variavel_a_gate_tb;

architecture sim of sinal_variavel_a_gate_tb is
    signal clk      : std_logic := '0';
    signal rst      : std_logic := '1';
    signal en       : std_logic := '0';
    signal entrada  : std_logic_vector(4 downto 0) := (others => '0');
    signal total_bit : std_logic_vector(2 downto 0);

    constant periodo : time := 20 ns;
begin
    dut: entity work.sinal_variavel
        port map (
            clk       => clk,
            rst       => rst,
            en        => en,
            entrada   => entrada,
            total_bit => total_bit,
            total_for => open,
            total_while => open,
            total_if  => open,
            total_case => open,
            total_sum => open,
            total_demx => open
        );

    clk <= not clk after periodo / 2;

    stim: process
    begin
        rst <= '1';
        en <= '0';
        wait for 2 * periodo;
        rst <= '0';
        en <= '1';
        entrada <= "10110";
        wait for 5 * periodo;

        entrada <= "11111";
        wait for 5 * periodo;

        entrada <= "10001";
        wait for 5 * periodo;

        wait;
    end process;
end architecture sim;