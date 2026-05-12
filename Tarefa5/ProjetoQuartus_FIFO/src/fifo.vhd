library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo is
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

architecture rtl of fifo is
    component fifo_gen is
        port (
            aclr  : in std_logic;
            clock : in std_logic;
            data  : in std_logic_vector(7 downto 0);
            rdreq : in std_logic;
            wrreq : in std_logic;
            empty : out std_logic;
            full  : out std_logic;
            q     : out std_logic_vector(7 downto 0);
            usedw : out std_logic_vector(9 downto 0)
        );
    end component;

    signal usedw_raw : std_logic_vector(9 downto 0);
begin
    fifo_ip : fifo_gen
        port map (
            aclr => rst,
            clock => clk,
            data => din,
            rdreq => rd_en,
            wrreq => wr_en,
            empty => empty,
            full => full,
            q => dout,
            usedw => usedw_raw
        );

    usedw <= resize(unsigned(usedw_raw), usedw'length);
end architecture;