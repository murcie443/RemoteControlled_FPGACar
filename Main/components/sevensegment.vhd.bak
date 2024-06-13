library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity sevensegment is 
port(
	  data_in	: in std_logic_vector(2 downto 0) := (others =>'0');
	  data_out: out std_logic_vector(6 downto 0) := (others =>'0')
			);
end sevensegment;
			
architecture sevensegment_b of sevensegment is 

begin 

process(data_in) begin
	case data_in is
	when "000" => data_out<= not "0111111"; --0
	when "001" => data_out<=not "0000110"; --1
	when "010" => data_out<=not "1011011"; --2 
	when "011" => data_out<=not "1001111"; --3
	when "100" => data_out<=not "1100110"; --4
	when "101" => data_out<=not "1101101"; --5
	when "110" => data_out<=not "1111101"; --6
	when "111" => data_out<=not "0000111"; --7
	when others => data_out<=not"0000000"; --default
	end case;
end process;


end sevensegment_b;