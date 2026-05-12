library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bram is
    generic (
        INIT_SEQUENCE : boolean := false
    );
    port (
        clk  : in  std_logic;
        we   : in  std_logic;
        addr : in  unsigned(10 downto 0);
        din  : in  std_logic_vector(7 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of bram is
    component bram_gen is
        port (
            aclr    : in std_logic := '0';
            address : in std_logic_vector(10 downto 0);
            clock   : in std_logic := '1';
            data    : in std_logic_vector(7 downto 0);
            wren    : in std_logic;
            q       : out std_logic_vector(7 downto 0)
        );
    end component;

    component bram_gen_Initialized is
        port (
            aclr    : in std_logic := '0';
            address : in std_logic_vector(10 downto 0);
            clock   : in std_logic := '1';
            data    : in std_logic_vector(7 downto 0);
            wren    : in std_logic;
            q       : out std_logic_vector(7 downto 0)
        );
    end component;

    signal address_slv : std_logic_vector(10 downto 0);
begin
    address_slv <= std_logic_vector(addr);

    gen_with_init : if INIT_SEQUENCE generate
    begin
        ram_ip : bram_gen_Initialized
            port map (
                aclr => '0',
                address => address_slv,
                clock => clk,
                data => din,
                wren => we,
                q => dout
            );
    end generate;

    gen_without_init : if not INIT_SEQUENCE generate
    begin
        ram_ip : bram_gen
            port map (
                aclr => '0',
                address => address_slv,
                clock => clk,
                data => din,
                wren => we,
                q => dout
            );
    end generate;
end architecture;