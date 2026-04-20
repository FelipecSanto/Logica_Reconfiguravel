library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_mod16 is
	generic (
		RESET_VALUE : std_logic_vector(3 downto 0) := "0000"
	);
	port (
		CLK  : in  std_logic;
		CLR  : in  std_logic;
		RST  : in  std_logic;
		EN   : in  std_logic;
		LOAD : in  std_logic;
		D    : in  std_logic_vector(3 downto 0);
		Q    : out std_logic_vector(3 downto 0)
	);
end entity counter_mod16;

architecture rtl of counter_mod16 is
	signal reg_q : unsigned(3 downto 0);
begin
	process (CLK, CLR, RST)
	begin
		if (CLR = '1') or (RST = '1') then
			reg_q <= unsigned(RESET_VALUE);
		elsif rising_edge(CLK) then
			if LOAD = '1' then
				reg_q <= unsigned(D);
			elsif EN = '1' then
				reg_q <= reg_q + 1;
			end if;
		end if;
	end process;

	Q <= std_logic_vector(reg_q);
end architecture rtl;