library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_4 is
    port (
        CLK, RST, EN, CLR : in std_logic;
        INPT : in std_logic_vector(3 downto 0);
        Q : out std_logic_vector(3 downto 0)
    );
end cont_4;

architecture rtl of cont_4 is
    signal count : unsigned(3 downto 0) := (others => '0');
begin
    process(CLK, RST)
    begin
        if RST = '1' then
            count <= (others => '0');
        elsif rising_edge(CLK) then
            if CLR = '1' then
                count <= unsigned(INPT);
            elsif EN = '1' then
                count <= count + 1;
            end if;
        end if;
    end process;
    Q <= std_logic_vector(count);
end architecture rtl;
