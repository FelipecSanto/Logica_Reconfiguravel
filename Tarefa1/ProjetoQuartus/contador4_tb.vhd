library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_contador4 is
end entity;

architecture sim of tb_contador4 is
    component contador4 is
        port (
            clk   : in  std_logic;
            rst   : in  std_logic;
            en    : in  std_logic;
            clr   : in  std_logic;
            load  : in  unsigned(3 downto 0);
            q     : out unsigned(3 downto 0)
        );
    end component;

    signal clk  : std_logic := '0';
    signal rst  : std_logic := '0';
    signal en   : std_logic := '0';
    signal clr  : std_logic := '0';
    signal load : unsigned(3 downto 0) := (others => '0');
    signal q    : unsigned(3 downto 0);

    constant THigh : time := 10 ns;
    constant TLow  : time := 10 ns;

begin
    uut: contador4
        port map (
            clk  => clk,
            rst  => rst,
            en   => en,
            clr  => clr,
            load => load,
            q    => q
        );

    -- CLK: quadrado, THigh=10ns, TLow=10ns, começando em nível baixo
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for TLow;
            clk <= '1';
            wait for THigh;
        end loop;
    end process;

    -- RST: alto de 0 a 15 ns, baixo no restante
    rst_process: process
    begin
        rst <= '1';
        wait for 15 ns;
        rst <= '0';
        wait;
    end process;

    -- EN: alto de 0 a 185 ns, baixo no restante
    en_process: process
    begin
        en <= '1';
        wait for 185 ns;
        en <= '0';
        wait;
    end process;

    -- CLR: alto de 75 a 95 ns e de 125 a 145 ns, baixo no restante
    clr_process: process
    begin
        clr <= '0';
        wait for 75 ns;
        clr <= '1';
        wait for 20 ns;
        clr <= '0';
        wait for 30 ns;
        clr <= '1';
        wait for 20 ns;
        clr <= '0';
        wait;
    end process;

    -- LOAD: carrega valor quando CLR ativa
    load_process: process
    begin
        load <= (others => '0');
        wait for 75 ns;
        load <= "0101";
        wait for 30 ns;
        load <= "1010";
        wait for 20 ns;
        load <= (others => '0');
        wait;
    end process;

end architecture;