library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sinal_variavel_mult is
    port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        en          : in  std_logic;
        entrada     : in  std_logic_vector(4 downto 0);
        total_for   : out integer range 0 to 5;
        total_while : out integer range 0 to 5;
        total_if    : out integer range 0 to 5;
        total_case  : out integer range 0 to 5;
        total_sum   : out integer range 0 to 5;
        total_demx  : out integer range 0 to 5
    );
end entity sinal_variavel_mult;

architecture rtl of sinal_variavel_mult is
    signal resultado_for   : integer range 0 to 5 := 0;
    signal resultado_while : integer range 0 to 5 := 0;
    signal resultado_if    : integer range 0 to 5 := 0;
    signal resultado_case  : integer range 0 to 5 := 0;
    signal resultado_soma  : integer range 0 to 5 := 0;
    signal resultado_demux : integer range 0 to 5 := 0;

    signal bit0, bit1, bit2, bit3, bit4 : integer range 0 to 1 := 0;
    signal linha0, linha1, linha2, linha3, linha4 : std_logic := '0';
begin
    total_for   <= resultado_for;
    total_while <= resultado_while;
    total_if    <= resultado_if;
    total_case  <= resultado_case;
    total_sum   <= resultado_soma;
    total_demx  <= resultado_demux;

    process(clk, rst)
        variable conta : integer range 0 to 5;
    begin
        if rst = '1' then
            resultado_for <= 0;
        elsif rising_edge(clk) then
            if en = '1' then
                conta := 0;
                for i in 0 to 4 loop
                    if entrada(i) = '1' then
                        conta := conta + 1;
                    end if;
                end loop;
                resultado_for <= conta;
            end if;
        end if;
    end process;

    process(clk, rst)
        variable conta : integer range 0 to 5;
        variable i     : integer range 0 to 5;
    begin
        if rst = '1' then
            resultado_while <= 0;
        elsif rising_edge(clk) then
            if en = '1' then
                conta := 0;
                i := 0;
                while i < 5 loop
                    if entrada(i) = '1' then
                        conta := conta + 1;
                    end if;
                    i := i + 1;
                end loop;
                resultado_while <= conta;
            end if;
        end if;
    end process;

    process(clk, rst)
        variable conta : integer range 0 to 5;
    begin
        if rst = '1' then
            resultado_if <= 0;
        elsif rising_edge(clk) then
            if en = '1' then
                conta := 0;
                if entrada(0) = '1' then conta := conta + 1; end if;
                if entrada(1) = '1' then conta := conta + 1; end if;
                if entrada(2) = '1' then conta := conta + 1; end if;
                if entrada(3) = '1' then conta := conta + 1; end if;
                if entrada(4) = '1' then conta := conta + 1; end if;
                resultado_if <= conta;
            end if;
        end if;
    end process;

    process(clk, rst)
    begin
        if rst = '1' then
            resultado_case <= 0;
        elsif rising_edge(clk) then
            if en = '1' then
                case entrada is
                    when "00000" => resultado_case <= 0;
                    when "00001" | "00010" | "00100" | "01000" | "10000" => resultado_case <= 1;
                    when "00011" | "00101" | "00110" | "01001" | "01010" | "01100" |
                         "10001" | "10010" | "10100" | "11000" => resultado_case <= 2;
                    when "00111" | "01011" | "01101" | "01110" | "10011" | "10101" |
                         "10110" | "11001" | "11010" | "11100" => resultado_case <= 3;
                    when "01111" | "10111" | "11011" | "11101" | "11110" => resultado_case <= 4;
                    when others => resultado_case <= 5;
                end case;
            end if;
        end if;
    end process;

    bit0 <= 1 when entrada(0) = '1' else 0;
    bit1 <= 1 when entrada(1) = '1' else 0;
    bit2 <= 1 when entrada(2) = '1' else 0;
    bit3 <= 1 when entrada(3) = '1' else 0;
    bit4 <= 1 when entrada(4) = '1' else 0;

    resultado_soma <= bit0 + bit1 + bit2 + bit3 + bit4;

    linha0 <= entrada(0);
    linha1 <= entrada(1);
    linha2 <= entrada(2);
    linha3 <= entrada(3);
    linha4 <= entrada(4);

    process(linha0, linha1, linha2, linha3, linha4)
        variable conta : integer range 0 to 5;
    begin
        conta := 0;

        if linha0 = '1' then conta := conta + 1; end if;
        if linha1 = '1' then conta := conta + 1; end if;
        if linha2 = '1' then conta := conta + 1; end if;
        if linha3 = '1' then conta := conta + 1; end if;
        if linha4 = '1' then conta := conta + 1; end if;

        resultado_demux <= conta;
    end process;
end architecture rtl;
