library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
entity uart_tb is
end uart_tb;
 
architecture behave of uart_tb is
 
  component uart_rx is
    generic (
      g_CLKS_PER_BIT : integer := 115   -- Needs to be set correctly
      );
    port (
      i_clk       : in  std_logic;
      i_rx_serial : in  std_logic;
      o_rx_dv     : out std_logic;
      o_rx_byte   : out std_logic_vector(7 downto 0)
      );
  end component uart_rx;
 
  -- Test Bench uses a 10 MHz Clock
  -- Want to interface to 115200 baud UART
  -- 10000000 / 115200 = 87 Clocks Per Bit.
  constant c_CLKS_PER_BIT : integer := 87;
 
  constant c_BIT_PERIOD : time := 8680 ns;
   
  signal r_CLOCK     : std_logic                    := '0';
  signal w_RX_DV     : std_logic;
  signal w_RX_BYTE   : std_logic_vector(7 downto 0);
  signal r_RX_SERIAL : std_logic := '1';
 
  -- Instantiate UART Receiver
  UART_RX_INST : uart_rx
    generic map (
      g_CLKS_PER_BIT => c_CLKS_PER_BIT
      )
    port map (
      i_clk       => r_CLOCK,
      i_rx_serial => r_RX_SERIAL,
      o_rx_dv     => w_RX_DV,
      o_rx_byte   => w_RX_BYTE
      );
 
  r_CLOCK <= not r_CLOCK after 50 ns;
   
  process is
  begin
    -- Send a command to the UART
    wait until rising_edge(r_CLOCK);
    r_RX_SERIAL <= '0'; -- Start bit
    wait for c_BIT_PERIOD;
    for ii in 0 to 7 loop
      r_RX_SERIAL <= X"3F"(ii); -- Data bits
      wait for c_BIT_PERIOD;
    end loop;
    r_RX_SERIAL <= '1'; -- Stop bit
    wait for c_BIT_PERIOD;
 
    -- Check that the correct command was received
    if w_RX_BYTE = X"3F" then
      report "Test Passed - Correct Byte Received" severity note;
    else
      report "Test Failed - Incorrect Byte Received" severity note;
    end if;
 
    assert false report "Tests Complete" severity failure;
     
  end process;
   
end behave;