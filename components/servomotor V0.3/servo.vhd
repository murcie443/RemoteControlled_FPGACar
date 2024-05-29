LIBRARY ieee;
USE ieee.std_logic_1164.ALL; --for the std_logic struct
USE ieee.std_logic_unsigned.ALL; --for updating the value of the counter

ENTITY SVmot_angle_cntrl IS
    PORT (
        CLK2 : IN STD_LOGIC; --20ms clock for the pwm that is prescaled already
        Svmot_anglev : IN STD_LOGIC_VECTOR (3 DOWNTO 0); --4bits velocity
        PWM_SVmot : OUT STD_LOGIC := '0' --pwm signal output

    );
END ENTITY SVmot_angle_cntrl;

ARCHITECTURE servomotor_behave OF SVmot_angle_cntrl IS

    SIGNAL counter : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0'); --create a counter of 10 bits for divide the 20ms into 600sections
    SIGNAL innercounter : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";  --second counter for the inner pwm generation  
	 constant A_position: integer:= 29; --15 sections (from 0)
	 constant B_position: integer:=45; --setpoint for the angle 0
	 constant C_position: integer:=60;--30-15=levels (from 0)
	 signal flag: std_logic:='1';
	 
BEGIN
    PROCESS (CLK2, Svmot_anglev)
    BEGIN

        IF rising_edge(CLK2) THEN

            counter <= counter + '1'; --update the counter each time clock
            IF counter = "1001010111" THEN --reset the counter at 599
                counter <= (OTHERS => '0'); --reset counter to 0	
            END IF;
				
				IF Svmot_anglev="1000" or Svmot_anglev="0111" then --if the angle is -6 or +6 force the pulse to 1.5ms to be 0 angle degree
					
					
					IF counter <("000000000" + B_position) then
						PWM_SVmot <= '1'; --Hold high for 1.5 MS (0 angle degree)
					end if;
					IF counter>=("000000000"+B_position) then
						PWM_SVmot <= '0'; --Hold high for 1.5 MS (0 angle degree)
					end if;
							
				ELSIF counter <= ("000000000" + A_position) THEN --when it has reached the A_position
						
						
						PWM_SVmot <= '1'; --Hold high for 1 ms
					
					 
				ELSIF counter >= ("000000000" +C_position) THEN --when it has reached the C_position
						
						PWM_SVmot <= '0'; --Hold low after 2 ms
					
                
				ELSE
						
						IF flag='0' THEN --false
						flag<='1'; --true
						
						ELSE --pwm
						
							innercounter <= innercounter + 1; --update the inner counter only here
							flag<='0'; --flag to 0 for the output in hold for another rising clock
							IF innercounter = "1110" THEN --reset the inner counter
								innercounter <= "0000";

							END IF;
							 
							IF innercounter < Svmot_anglev THEN --the innercounter as a comparator 
								 PWM_SVmot <= '1';
							ELSE
								 PWM_SVmot <= '0';
							END IF;
						end if;
				END IF;
				

        END IF;
    END PROCESS;
END servomotor_behave;