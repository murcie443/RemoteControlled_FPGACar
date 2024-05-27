LIBRARY ieee;
USE ieee.std_logic_1164.ALL; --for the std_logic struct
USE ieee.std_logic_unsigned.ALL; --for increment the value of the counter

ENTITY DCmot_PWM_cntrl IS
    PORT (
        CLK1 : IN STD_LOGIC; --clock for the pwm that is prescaled already
        DCmot_speedv : IN STD_LOGIC_VECTOR (2 DOWNTO 0); --3bits velocity
        PWM_DCmot : OUT STD_LOGIC --pwm signal output

    );
END ENTITY DCmot_PWM_cntrl;

ARCHITECTURE driverdc_behave OF DCmot_PWM_cntrl IS

    SIGNAL counter : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0'); --create a counter 

BEGIN
    PROCESS (CLK1, DCmot_speedv)
    BEGIN

        IF rising_edge(CLK1) THEN
            counter <= counter + '1'; --increment the counter each time clock
            IF counter = "110" THEN  --reset the counter whenever it reaches the value 110, otherwise goes to 0 in the case of speed equal to 111
                counter <= "000";
            END IF;
            IF counter > DCmot_speedv THEN --the counter as a comparator
                PWM_DCmot <= '1';
            ELSE
                PWM_DCmot <= '0';
            END IF;

        END IF;
    END PROCESS;
END driverdc_behave;