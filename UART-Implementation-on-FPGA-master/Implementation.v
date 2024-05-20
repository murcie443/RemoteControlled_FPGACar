library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;


-- Top level entity
entity uart_tb is
  port (
    i_Clk       : in  std_logic;
    i_RX_Serial : in  std_logic;
    o_RX_Byte   : out std_logic_vector(7 downto 0)
    );
end uart_tb;

architecture rtl of uart_tb is

-- Include the UART_RX component
component UART_RX is
  generic (
    g_CLKS_PER_BIT : integer := 115
    );
  port (
    i_Clk       : in  std_logic;
    i_RX_Serial : in  std_logic;
    o_RX_DV     : out std_logic;
    o_RX_Byte   : out std_logic_vector(7 downto 0)
    );
end component;

  signal s_RX_DV : std_logic;
  
begin
  -- Instantiate the UART_RX component
  U1: UART_RX
    port map (
      i_Clk       => i_Clk,
      i_RX_Serial => i_RX_Serial,
      o_RX_DV     => s_RX_DV,
      o_RX_Byte   => o_RX_Byte
      );

  -- the message received is correct when s_RX_DV is '1'.

end rtl;