LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;


ENTITY preliminary_control IS
    PORT (
        CLK3 : IN STD_LOGIC; --clock prescaled
        o_RX_DV : IN STD_LOGIC; --it signals whenever there is a new data
        RX_data_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        RX_data_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --to the bytedivider
        EN_SW : IN STD_LOGIC --enable switch

    );
END preliminary_control;

ARCHITECTURE preliminary_control_arch OF preliminary_control IS
    SIGNAL counter : INTEGER := 1; --count the cycles
    SIGNAL flag_error : STD_LOGIC := '0';
    CONSTANT timeout : INTEGER := 50; --50 clock cycle to put the output to 1 (motor off)
    SIGNAL before : STD_LOGIC := NOT o_RX_DV; --to compare
BEGIN

    assign : PROCESS (EN_SW, flag_error, RX_data_IN)
    BEGIN

        IF EN_SW = '0' OR flag_error = '1' THEN
            RX_data_OUT <= (OTHERS => '0'); --FORCE TO 0 THE RX OUTPUT WHEN DISABLED
        ELSE
            RX_data_OUT <= RX_data_IN;
        END IF;
    END PROCESS assign;

    check : PROCESS (o_RX_DV, clk3)
    BEGIN
        IF rising_edge(clk3) THEN
            IF o_RX_DV /= before THEN
                counter <= 1;
                flag_error <= '0';
                before <= NOT before;

            ELSE
                IF counter < timeout THEN
                    counter <= counter + 1;
                ELSE
                    flag_error <= '1';
                END IF;
            END IF;

        END IF;
    END PROCESS check;
END preliminary_control_arch;