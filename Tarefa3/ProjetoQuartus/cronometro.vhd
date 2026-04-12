library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cronometro is
	port (
		CLK : in  std_logic;
		CLR : in  std_logic;
		RST : in  std_logic;
		EN  : in  std_logic;
		BTN_PLAY_PAUSE : in std_logic;
		BTN_RESET : in std_logic;
		Q_cs  : out std_logic_vector(7 downto 0);
		Q_s   : out std_logic_vector(7 downto 0);
		HEX0  : out std_logic_vector(6 downto 0);
		HEX1  : out std_logic_vector(6 downto 0);
		HEX2  : out std_logic_vector(6 downto 0);
		HEX3  : out std_logic_vector(6 downto 0);
		CLK2  : out std_logic;
		CLK3  : out std_logic;
		CLK4  : out std_logic;
		RST_SIG1 : out std_logic;
		RST_SIG2 : out std_logic
	);
end entity cronometro;

architecture rtl of cronometro is
	signal state : std_logic := '0';
	signal play_prev : std_logic := '0';

	signal q0 : std_logic_vector(3 downto 0) := (others => '0');
	signal q1 : std_logic_vector(3 downto 0) := (others => '0');
	signal q2 : std_logic_vector(3 downto 0) := (others => '0');
	signal q3 : std_logic_vector(3 downto 0) := (others => '0');

	signal count_enable : std_logic;
	signal reset_active  : std_logic;

	signal q0_en : std_logic;
	signal q1_en : std_logic;
	signal q2_en : std_logic;
	signal q3_en : std_logic;
	signal q0_clr : std_logic;
	signal q1_clr : std_logic;
	signal q2_clr : std_logic;
	signal q3_clr : std_logic;

begin
	reset_active <= RST or BTN_RESET;
	count_enable <= EN and state and not BTN_RESET;

	q0_en <= '1' when (count_enable = '1' and q0 /= "1001") else '0';
	q1_en <= '1' when (count_enable = '1' and q0 = "1001" and q1 /= "1001") else '0';
	q2_en <= '1' when (count_enable = '1' and q0 = "1001" and q1 = "1001" and q2 /= "1001") else '0';
	q3_en <= '1' when (count_enable = '1' and q0 = "1001" and q1 = "1001" and q2 = "1001" and q3 /= "0101") else '0';

	q0_clr <= '1' when (CLR = '1' or BTN_RESET = '1' or (count_enable = '1' and q0 = "1001")) else '0';
	q1_clr <= '1' when (CLR = '1' or BTN_RESET = '1' or (count_enable = '1' and q0 = "1001" and q1 = "1001")) else '0';
	q2_clr <= '1' when (CLR = '1' or BTN_RESET = '1' or (count_enable = '1' and q0 = "1001" and q1 = "1001" and q2 = "1001")) else '0';
	q3_clr <= '1' when (CLR = '1' or BTN_RESET = '1' or (count_enable = '1' and q0 = "1001" and q1 = "1001" and q2 = "1001" and q3 = "0101")) else '0';

	process(CLK, RST)
	begin
		if RST = '1' then
			state <= '0';
			play_prev <= '0';
		elsif rising_edge(CLK) then
			if CLR = '1' or BTN_RESET = '1' then
				state <= '0';
			elsif BTN_PLAY_PAUSE = '1' and play_prev = '0' then
				state <= not state;
			end if;

			play_prev <= BTN_PLAY_PAUSE;
		end if;
	end process;

	u0 : entity work.cont_4(rtl)
		port map (
			CLK  => CLK,
			RST  => RST,
			EN   => q0_en,
			CLR  => q0_clr,
			INPT => (others => '0'),
			Q    => q0
		);

	u1 : entity work.cont_4(rtl)
		port map (
			CLK  => CLK,
			RST  => RST,
			EN   => q1_en,
			CLR  => q1_clr,
			INPT => (others => '0'),
			Q    => q1
		);

	u2 : entity work.cont_4(rtl)
		port map (
			CLK  => CLK,
			RST  => RST,
			EN   => q2_en,
			CLR  => q2_clr,
			INPT => (others => '0'),
			Q    => q2
		);

	u3 : entity work.cont_4(rtl)
		port map (
			CLK  => CLK,
			RST  => RST,
			EN   => q3_en,
			CLR  => q3_clr,
			INPT => (others => '0'),
			Q    => q3
		);

	disp0 : entity work.bcd_7seg(behavioral)
		port map (
			BCD => q0,
			SEG => HEX0
		);

	disp1 : entity work.bcd_7seg(behavioral)
		port map (
			BCD => q1,
			SEG => HEX1
		);

	disp2 : entity work.bcd_7seg(behavioral)
		port map (
			BCD => q2,
			SEG => HEX2
		);

	disp3 : entity work.bcd_7seg(behavioral)
		port map (
			BCD => q3,
			SEG => HEX3
		);

	Q_cs <= std_logic_vector(
		shift_left(resize(unsigned(q1), Q_cs'length), 3) +
		shift_left(resize(unsigned(q1), Q_cs'length), 1) +
		resize(unsigned(q0), Q_cs'length)
	);
	Q_s  <= std_logic_vector(
		shift_left(resize(unsigned(q3), Q_s'length), 3) +
		shift_left(resize(unsigned(q3), Q_s'length), 1) +
		resize(unsigned(q2), Q_s'length)
	);

	CLK2 <= q1_en;
	CLK3 <= q2_en;
	CLK4 <= q3_en;
	RST_SIG1 <= reset_active or q0_clr or q1_clr;
	RST_SIG2 <= reset_active or q2_clr or q3_clr;

end architecture rtl;
