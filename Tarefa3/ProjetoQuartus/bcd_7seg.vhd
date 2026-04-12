library ieee;
use ieee.std_logic_1164.all;

entity bcd_7seg is
	port (
		BCD : in  std_logic_vector(3 downto 0);
		SEG : out std_logic_vector(6 downto 0)  -- a, b, c, d, e, f, g
	);
end entity bcd_7seg;

architecture behavioral of bcd_7seg is
begin
	process(BCD)
	begin
		case BCD is
			when "0000" => SEG <= "1110111";  -- 0
			when "0001" => SEG <= "0010010";  -- 1
			when "0010" => SEG <= "1011101";  -- 2
			when "0011" => SEG <= "1011011";  -- 3
			when "0100" => SEG <= "0110011";  -- 4
			when "0101" => SEG <= "1101011";  -- 5
			when "0110" => SEG <= "1101111";  -- 6
			when "0111" => SEG <= "1010010";  -- 7
			when "1000" => SEG <= "1111111";  -- 8
			when "1001" => SEG <= "1111011";  -- 9
			when others => SEG <= "0000000";  -- apagado
		end case;
	end process;

end architecture behavioral;
