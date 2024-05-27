LIBRARY ieee;
USE ieee.std_logic_1164.ALL; --for the std_logic struct
USE ieee.std_logic_unsigned.ALL; --for updating the value of the counter

ENTITY servomotor IS
    PORT (
        CLK2 : IN STD_LOGIC; --20ms clock for the pwm that is prescaled already
        Svmot_anglev : IN STD_LOGIC_VECTOR (3 DOWNTO 0); --4bits velocity
        PWM_SVmot : OUT STD_LOGIC := '0' --pwm signal output

    );
END ENTITY servomotor;

ARCHITECTURE servomotor_behave OF servomotor IS

    SIGNAL counter : STD_LOGIC_VECTOR(8 DOWNTO 0) := (OTHERS => '1'); --create a counter of 9 bits for divide the 20ms into 300sections
    SIGNAL innercounter : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1111";  --second counter for the inner pwm generation  

BEGIN
    PROCESS (CLK2, Svmot_anglev)
    BEGIN

        IF rising_edge(CLK2) THEN

            counter <= counter - '1'; --update the counter each time clock
            IF counter = "011010101" THEN --reset the counter 
                counter <= (OTHERS => '1'); --reset counter to 1	
            END IF;

            IF counter >= "111110001" THEN --counter of 15 sections 
                PWM_SVmot <= '1'; --Hold high for 1 MS
					 
            ELSIF counter <= "111100001" THEN --counter of 30 sections
                PWM_SVmot <= '0'; --Hold low after 2 ms
                
            ELSE
                innercounter <= innercounter - '1'; --update the inner counter only here
                IF innercounter = "0001" THEN --reset the inner counter
                    innercounter <= "1111";
                END IF;
                IF innercounter > Svmot_anglev THEN --the innercounter as a comparator 
                    PWM_SVmot <= '1';
                ELSE
                    PWM_SVmot <= '0';
                END IF;
            END IF;

        END IF;
    END PROCESS;
END servomotor_behave;