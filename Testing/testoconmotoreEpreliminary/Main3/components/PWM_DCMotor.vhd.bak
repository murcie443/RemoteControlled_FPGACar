LIBRARY ieee;
USE ieee.std_logic_1164.ALL; -- for the std_logic struct
USE ieee.std_logic_unsigned.ALL; -- for incrementing the value of the counter

ENTITY PWM_DCMotor IS
    PORT (
        CLK1 : IN STD_LOGIC; -- clock for the pwm that is prescaled already
        DCmot_speedv : IN STD_LOGIC_VECTOR (2 DOWNTO 0); -- 3bits velocity
        dir_mot : IN STD_LOGIC; -- bit for the direction of the motor
        PWM_DCmot : OUT STD_LOGIC; -- pwm signal output
        PWM_DCmot_rev : OUT STD_LOGIC -- pwm signal output negated
    );
END ENTITY PWM_DCMotor;

ARCHITECTURE driverdc_behave OF PWM_DCMotor IS
    COMPONENT DCmot_PWM_cntrl IS
        PORT (
            CLK1 : IN STD_LOGIC; -- clock for the pwm that is prescaled already
            DCmot_speedv : IN STD_LOGIC_VECTOR (2 DOWNTO 0); -- 3bits velocity
            PWM_DCmot : OUT STD_LOGIC -- pwm signal output
        );
    END COMPONENT;

    SIGNAL PWM_signal_U0 : STD_LOGIC;
    SIGNAL PWM_signal_U_rev : STD_LOGIC;

BEGIN
    -- Instances of the PWM control component
    U_rev: DCmot_PWM_cntrl
        PORT MAP (
            CLK1 => CLK1,
            DCmot_speedv => DCmot_speedv,
            PWM_DCmot => PWM_signal_U_rev
        );

    U0: DCmot_PWM_cntrl
        PORT MAP (
            CLK1 => CLK1,
            DCmot_speedv => DCmot_speedv,
            PWM_DCmot => PWM_signal_U0
        );

    -- Process to select the appropriate PWM signal based on the direction
    PROCESS (CLK1)
    BEGIN
        IF rising_edge(CLK1) THEN
            IF dir_mot = '0' THEN
                PWM_DCmot <= '0'; -- Disable the forward PWM signal
                PWM_DCmot_rev <= PWM_signal_U_rev; -- Enable the reverse PWM signal
            ELSE
                PWM_DCmot_rev <= '0'; -- Disable the reverse PWM signal
                PWM_DCmot <= PWM_signal_U0; -- Enable the forward PWM signal
            END IF;
        END IF;
    END PROCESS;
END driverdc_behave;
