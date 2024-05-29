library ieee;
use ieee.std_logic_1164.all;

entity byte_divider is
        port(RX_data: in std_logic_vector(7 downto 0); --byte in arrivo dal modulo UART
             DCmot_speedv: out std_logic_vector(2 downto 0); --codifica a tre bit sulla velocità del motore
             Svmot_anglev: out std_logic_vector(3 downto 0); --codifica a quattro bit sull'angolo del servomotore
             NUP_v: out std_logic);
end byte_divider;

architecture byte_divider of byte_divider is
begin
    process(RX_data)
    begin
        NUP_v <= RX_data(7);
		  DCmot_speedv <= RX_data(6 downto 4);
        Svmot_anglev <= RX_data(3 downto 0);
    end process;
end byte_divider;