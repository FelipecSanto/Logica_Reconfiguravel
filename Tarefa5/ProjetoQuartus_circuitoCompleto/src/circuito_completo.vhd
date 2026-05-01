library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_completo is
    port (
        clk : in std_logic;
        rst : in std_logic;
        dbg_done : out std_logic
    );
end entity;

architecture rtl of circuito_completo is
    signal src_addr : unsigned(10 downto 0);
    signal dst_addr : unsigned(10 downto 0);
    signal fifo_wr_en : std_logic;
    signal fifo_rd_en : std_logic;
    signal dst_we : std_logic;
    signal fifo_usedw : unsigned(10 downto 0);
    signal src_dout : std_logic_vector(7 downto 0);
    signal fifo_dout : std_logic_vector(7 downto 0);
    signal dst_dout : std_logic_vector(7 downto 0);
    signal done_r : std_logic;
begin
    u_ctrl : entity work.flow_controller
        port map (
            clk => clk,
            rst => rst,
            fifo_usedw => fifo_usedw,
            src_addr => src_addr,
            dst_addr => dst_addr,
            fifo_wr_en => fifo_wr_en,
            fifo_rd_en => fifo_rd_en,
            dst_we => dst_we,
            done => done_r
        );

    u_src : entity work.sync_bram
        generic map (
            INIT_SEQUENCE => true
        )
        port map (
            clk => clk,
            rst => rst,
            we => '0',
            addr => src_addr,
            din => (others => '0'),
            dout => src_dout
        );

    u_fifo : entity work.sync_fifo
        port map (
            clk => clk,
            rst => rst,
            wr_en => fifo_wr_en,
            rd_en => fifo_rd_en,
            din => src_dout,
            dout => fifo_dout,
            full => open,
            empty => open,
            usedw => fifo_usedw
        );

    u_dst : entity work.sync_bram
        generic map (
            INIT_SEQUENCE => false
        )
        port map (
            clk => clk,
            rst => rst,
            we => dst_we,
            addr => dst_addr,
            din => fifo_dout,
            dout => dst_dout
        );

    dbg_done <= done_r;
end architecture;