library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bram is
    generic (
        INIT_SEQUENCE : boolean := false
    );
    port (
        clk  : in  std_logic;
        rst  : in  std_logic;
        we   : in  std_logic;
        addr : in  unsigned(10 downto 0);
        din  : in  std_logic_vector(7 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of bram is
    type mem_t is array (0 to 2047) of std_logic_vector(7 downto 0);
    signal mem : mem_t := (others => (others => '0'));
begin
    process(clk, rst)
    begin
        if rst = '1' then
            for i in 0 to 2047 loop
                if INIT_SEQUENCE then
                    mem(i) <= std_logic_vector(to_unsigned(i mod 256, 8));
                else
                    mem(i) <= (others => '0');
                end if;
            end loop;
        elsif rising_edge(clk) then
            if we = '1' then
                mem(to_integer(addr)) <= din;
            end if;
        end if;
    end process;

    dout <= mem(to_integer(addr));
end architecture;