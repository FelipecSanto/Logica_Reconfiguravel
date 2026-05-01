library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sync_fifo is
    port (
        clk   : in  std_logic;
        rst   : in  std_logic;
        wr_en : in  std_logic;
        rd_en : in  std_logic;
        din   : in  std_logic_vector(7 downto 0);
        dout  : out std_logic_vector(7 downto 0);
        full  : out std_logic;
        empty : out std_logic;
        usedw : out unsigned(10 downto 0)
    );
end entity;

architecture rtl of sync_fifo is
    type mem_t is array (0 to 1023) of std_logic_vector(7 downto 0);
    signal mem : mem_t := (others => (others => '0'));
    signal wr_ptr : integer range 0 to 1023 := 0;
    signal rd_ptr : integer range 0 to 1023 := 0;
    signal count  : integer range 0 to 1024 := 0;
begin
    process(clk, rst)
        variable next_count : integer range 0 to 1024;
        variable write_ok : boolean;
        variable read_ok  : boolean;
    begin
        if rst = '1' then
            wr_ptr <= 0;
            rd_ptr <= 0;
            count <= 0;
            mem <= (others => (others => '0'));
        elsif rising_edge(clk) then
            write_ok := (wr_en = '1') and (count < 1024);
            read_ok  := (rd_en = '1') and (count > 0);

            if write_ok then
                mem(wr_ptr) <= din;
                if wr_ptr = 1023 then
                    wr_ptr <= 0;
                else
                    wr_ptr <= wr_ptr + 1;
                end if;
            end if;

            if read_ok then
                if rd_ptr = 1023 then
                    rd_ptr <= 0;
                else
                    rd_ptr <= rd_ptr + 1;
                end if;
            end if;

            next_count := count;
            if write_ok then
                next_count := next_count + 1;
            end if;
            if read_ok then
                next_count := next_count - 1;
            end if;
            count <= next_count;
        end if;
    end process;

    dout <= mem(rd_ptr);
    full <= '1' when count = 1024 else '0';
    empty <= '1' when count = 0 else '0';
    usedw <= to_unsigned(count, usedw'length);
end architecture;