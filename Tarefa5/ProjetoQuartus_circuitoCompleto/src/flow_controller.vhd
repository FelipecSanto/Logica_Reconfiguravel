library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity flow_controller is
    port (
        clk  : in  std_logic;
        rst  : in  std_logic;
        fifo_usedw : in unsigned(10 downto 0);
        src_addr   : out unsigned(10 downto 0);
        dst_addr   : out unsigned(10 downto 0);
        fifo_wr_en : out std_logic;
        fifo_rd_en : out std_logic;
        dst_we     : out std_logic;
        done       : out std_logic
    );
end entity;

architecture rtl of flow_controller is
    type wr_state_t is (wr_reset, wr_load, wr_fifo, wr_wait, wr_done);
    type rd_state_t is (rd_reset, rd_wait, rd_fifo, rd_done);

    signal wr_state : wr_state_t := wr_reset;
    signal rd_state : rd_state_t := rd_reset;
    signal src_addr_r : unsigned(10 downto 0) := (others => '0');
    signal dst_addr_r : unsigned(10 downto 0) := (others => '0');
    signal fifo_wr_en_r : std_logic := '0';
    signal fifo_rd_en_r : std_logic := '0';
    signal dst_we_r : std_logic := '0';
    signal slow_cnt : integer range 0 to 6 := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            fifo_wr_en_r <= '0';

            if rst = '1' then
                wr_state <= wr_reset;
                src_addr_r <= (others => '0');
            else
                case wr_state is
                    when wr_reset =>
                        src_addr_r <= (others => '0');
                        wr_state <= wr_load;
                    when wr_load =>
                        wr_state <= wr_fifo;
                    when wr_fifo =>
                        if fifo_usedw >= to_unsigned(768, fifo_usedw'length) then
                            wr_state <= wr_wait;
                        else
                            fifo_wr_en_r <= '1';
                            if src_addr_r = to_unsigned(2047, src_addr_r'length) then
                                wr_state <= wr_done;
                            else
                                src_addr_r <= src_addr_r + 1;
                            end if;
                        end if;
                    when wr_wait =>
                        if fifo_usedw <= to_unsigned(512, fifo_usedw'length) then
                            wr_state <= wr_fifo;
                        end if;
                    when wr_done =>
                        null;
                end case;
            end if;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            fifo_rd_en_r <= '0';
            dst_we_r <= '0';

            if rst = '1' then
                rd_state <= rd_reset;
                dst_addr_r <= (others => '0');
                slow_cnt <= 0;
            else
                case rd_state is
                    when rd_reset =>
                        rd_state <= rd_wait;
                    when rd_wait =>
                        if fifo_usedw > 0 then
                            rd_state <= rd_fifo;
                            slow_cnt <= 0;
                        end if;
                    when rd_fifo =>
                        if fifo_usedw = 0 then
                            rd_state <= rd_wait;
                            slow_cnt <= 0;
                        elsif slow_cnt = 6 then
                            fifo_rd_en_r <= '1';
                            dst_we_r <= '1';
                            slow_cnt <= 0;
                            if dst_addr_r = to_unsigned(2047, dst_addr_r'length) then
                                rd_state <= rd_done;
                            else
                                dst_addr_r <= dst_addr_r + 1;
                            end if;
                        else
                            slow_cnt <= slow_cnt + 1;
                        end if;
                    when rd_done =>
                        null;
                end case;
            end if;
        end if;
    end process;

    src_addr <= src_addr_r;
    dst_addr <= dst_addr_r;
    fifo_wr_en <= fifo_wr_en_r;
    fifo_rd_en <= fifo_rd_en_r;
    dst_we <= dst_we_r;
    done <= '1' when wr_state = wr_done and rd_state = rd_done else '0';
end architecture;