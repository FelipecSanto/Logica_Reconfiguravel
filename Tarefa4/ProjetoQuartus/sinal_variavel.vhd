library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sinal_variavel is
    port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        en          : in  std_logic;
        entrada     : in  std_logic_vector(4 downto 0);
        total_bit   : out integer range 0 to 5;
        total_for   : out integer range 0 to 5;
        total_while : out integer range 0 to 5;
        total_if    : out integer range 0 to 5;
        total_case  : out integer range 0 to 5;
        total_sum   : out integer range 0 to 5;
        total_demx  : out integer range 0 to 5
    );
end entity sinal_variavel;

architecture rtl of sinal_variavel is
    signal posicao_atual   : integer range 0 to 4 := 0;
    signal acumulado_parcial : integer range 0 to 5 := 0;
    signal palavra_base      : std_logic_vector(4 downto 0) := (others => '0');

    signal saida_for      : integer range 0 to 5;
    signal saida_while    : integer range 0 to 5;
    signal saida_if       : integer range 0 to 5;
    signal saida_case     : integer range 0 to 5;
    signal saida_soma     : integer range 0 to 5;
    signal saida_demux    : integer range 0 to 5;
begin
    process(clk, rst, entrada)
        variable proxima_contagem : integer range 0 to 5;
    begin
        if rst = '1' then
            posicao_atual   <= 0;
            acumulado_parcial <= 0;
            palavra_base      <= entrada;
        elsif entrada /= palavra_base then
            posicao_atual   <= 0;
            acumulado_parcial <= 0;
            palavra_base      <= entrada;
        elsif rising_edge(clk) then
            if en = '1' then
                proxima_contagem := acumulado_parcial;

                if entrada(posicao_atual) = '1' then
                    proxima_contagem := acumulado_parcial + 1;
                end if;

                acumulado_parcial <= proxima_contagem;

                if posicao_atual < 4 then
                    posicao_atual <= posicao_atual + 1;
                else
                    posicao_atual <= 0;
                end if;
            end if;
        end if;
    end process;

    total_bit   <= acumulado_parcial;
    total_for   <= saida_for;
    total_while <= saida_while;
    total_if    <= saida_if;
    total_case  <= saida_case;
    total_sum   <= saida_soma;
    total_demx  <= saida_demux;

    u_b: entity work.sinal_variavel_mult
        port map (
            clk         => clk,
            rst         => rst,
            en          => en,
            entrada     => entrada,
            total_for   => saida_for,
            total_while => saida_while,
            total_if    => saida_if,
            total_case  => saida_case,
            total_sum   => saida_soma,
            total_demx  => saida_demux
        );
end architecture rtl;
