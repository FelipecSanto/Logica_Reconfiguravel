library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_75 is
	port (
		CLK : in  std_logic;
		CLR : in  std_logic;
		RST : in  std_logic;
		EN  : in  std_logic;
		Q   : out std_logic_vector(7 downto 0)
	);
end entity cont_75;

architecture structural of cont_75 is
	constant BCD_0 : std_logic_vector(3 downto 0) := "0000";
	constant BCD_1 : std_logic_vector(3 downto 0) := "0001";
	constant BCD_5 : std_logic_vector(3 downto 0) := "0101";
	constant BCD_8 : std_logic_vector(3 downto 0) := "1000";
	constant BCD_9 : std_logic_vector(3 downto 0) := "1001";

	signal tens_q  : std_logic_vector(3 downto 0);
	signal units_q : std_logic_vector(3 downto 0);

	signal tens_en   : std_logic := '0';
	signal tens_load : std_logic := '0';
	signal tens_d    : std_logic_vector(3 downto 0) := BCD_1;

	signal units_en   : std_logic := '0';
	signal units_load : std_logic := '0';
	signal units_d    : std_logic_vector(3 downto 0) := BCD_5;
begin
	process (CLR, RST, EN, tens_q, units_q)
	begin
		tens_en   <= '0';
		tens_load <= '0';
		tens_d    <= BCD_1;

		units_en   <= '0';
		units_load <= '0';
		units_d    <= BCD_5;

		if (CLR = '1') or (RST = '1') then
			tens_load <= '1';
			tens_d    <= BCD_1;
			units_load <= '1';
			units_d    <= BCD_5;
		elsif EN = '1' then
			if (tens_q = BCD_8) and (units_q = BCD_9) then
				tens_load <= '1';
				tens_d    <= BCD_1;
				units_load <= '1';
				units_d    <= BCD_5;
			elsif units_q = BCD_9 then
				tens_en   <= '1';
				units_load <= '1';
				units_d    <= BCD_0;
			else
				units_en <= '1';
			end if;
		end if;
	end process;

	U_UNITS : entity work.counter_mod16
		generic map (
			RESET_VALUE => BCD_5
		)
		port map (
			CLK  => CLK,
			CLR  => CLR,
			RST  => RST,
			EN   => units_en,
			LOAD => units_load,
			D    => units_d,
			Q    => units_q
		);

	U_TENS : entity work.counter_mod16
		generic map (
			RESET_VALUE => BCD_1
		)
		port map (
			CLK  => CLK,
			CLR  => CLR,
			RST  => RST,
			EN   => tens_en,
			LOAD => tens_load,
			D    => tens_d,
			Q    => tens_q
		);

	Q <= tens_q & units_q;
end architecture structural;
