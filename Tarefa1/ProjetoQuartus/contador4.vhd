library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador4 is
    port (
        clk 	: in  std_logic;
        rst 	: in  std_logic;
        en  	: in  std_logic;
        clr 	: in  std_logic;
		  load   : in  unsigned(3 downto 0);
        q   	: out unsigned(3 downto 0)
    );
end entity;

architecture rtl of contador4 is
    signal count : unsigned(3 downto 0) := (others => '0');
begin
    process(clk, rst)
    begin
        if rst = '1' then
            count <= (others => '0');
        elsif clk' event and clk = '1' then
            if clr = '1' then
                count <= load;
            elsif en = '1' then
                count <= count + 1;
            end if;
        end if;
    end process;

    q <= count;
end architecture;