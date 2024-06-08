library ieee;
use ieee.std_logic_1164.all;

entity byte_divider is
        port(
				RX_data: in std_logic_vector(7 downto 0); --byte coming from the uart
            Svmot_anglev: out std_logic_vector(3 downto 0);--encode 4bit to servomotor
				DCmot_speedv: out std_logic_vector(2 downto 0); --encode 3bit to DCmot
            Dir_mot: out std_logic); --encode 1bit for the direction
end byte_divider;

architecture byte_divider of byte_divider is
begin
    process(RX_data)
    begin
		  Dir_mot <= RX_data (7);	--the first bit is the direction
        DCmot_speedv <= RX_data(6 downto 4);
        Svmot_anglev <= RX_data(3 downto 0);
    end process;
end byte_divider;