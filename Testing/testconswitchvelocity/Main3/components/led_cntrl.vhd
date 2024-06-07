LIBRARY ieee;
USE ieee.std_logic_1164.ALL; --for the std_logic struct

ENTITY led_cntrl IS
    PORT (
        SW2 : IN STD_LOGIC; 
        SW3 : IN STD_LOGIC; 
		  back_bit: in STD_LOGIC;
        Front_led : OUT STD_LOGIC := '0';
		  Back_led: OUT STD_LOGIC := '0'

    );
END ENTITY led_cntrl;

ARCHITECTURE led_cntrl_b OF led_cntrl IS
SIGNAL STATE: STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
    PROCESS (SW2,SW3,back_bit)
    BEGIN
			STATE<=SW2&SW3;
	 
			case STATE is 
			when "01"=> 
				Front_led<='1';
				Back_led<='0';
			when "10" =>  
				Front_led<='1';
				if (back_bit='1') then 
					 Back_led<='1';
				else 
					 Back_led<='0';
				end if;
			when "11" => 
				Front_led<='1';
				Back_led<='1';
			when OTHERS =>
				Front_led<='0';
				Back_led<='0';
			end case;
			
    END PROCESS;
END led_cntrl_b;