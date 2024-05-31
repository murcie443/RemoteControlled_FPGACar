LIBRARY ieee;
USE ieee.std_logic_1164.ALL; --for the std_logic struct
USE ieee.std_logic_unsigned.ALL; --for increment the value of the counter

ENTITY DCmot_PWM_cntrl IS
    PORT (
        CLK1 : IN STD_LOGIC; --10khz clock for the pwm that is prescaled already
        DCmot_speedv : IN STD_LOGIC_VECTOR (2 DOWNTO 0); --3bits velocity
        PWM_DCmot : OUT STD_LOGIC --pwm signal output

    );
END ENTITY DCmot_PWM_cntrl;

ARCHITECTURE driverdc_behave OF DCmot_PWM_cntrl IS

    
    SIGNAL counter : STD_LOGIC_VECTOR(13 DOWNTO 0) := (OTHERS => '0'); --create a counter of 14 bits for divide the period into 10000 sections
    SIGNAL innercounter : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";  --second counter for the inner pwm generation  
	 constant A_position: integer:= 7; --setpoint A to 0 for instance
	 constant B_position: integer:=77; --(B_pos / A_pos) must be a int multiple of 7 for 7 levels of choice from 0 (3bit)
	 signal flag: integer:=1; --flag to have the an hold for the output in the pwm interval 

BEGIN
    PROCESS (CLK1, DCmot_speedv)
    BEGIN

        IF rising_edge(CLK1) THEN

            counter <= counter + '1'; --update the counter each time clock
            IF counter = "10011100001111" THEN --reset the counter at 9999
                counter <= (OTHERS => '0'); --reset counter to 0	
            END IF;

            IF counter < ("00000000000000" + A_position) THEN --when it has reached the A_position
                PWM_DCmot <= '1'; --Hold low until A_position
					 
            ELSIF counter >= ("00000000000000" +B_position) THEN --when it has reached the B_position
                PWM_DCmot <= '0'; --Hold low after B_position
                
            ELSE
					 IF flag=1 THEN
						 innercounter <= innercounter + '1'; --update the inner counter only here
						 flag<=(B_position/A_position)-1; --cause the flag is preincremented by 1
						 IF innercounter = "110" THEN --reset the inner counter
							  innercounter <= "000";
						 END IF;
						 IF innercounter < DCmot_speedv THEN --the innercounter as a comparator 
							  PWM_DCmot <= '1';
						 ELSE
							  PWM_DCmot <= '0';
						 END IF;
                
					 ELSE
						 flag<=flag-1;
					 END IF;
				END IF;
         END IF;

        
    END PROCESS;
END driverdc_behave;