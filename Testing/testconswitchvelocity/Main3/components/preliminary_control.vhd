LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;


ENTITY preliminary_control IS
    PORT (
        --CLK3 : IN STD_LOGIC; --clock prescaled
        --o_RX_DV : IN STD_LOGIC; --it signals whenever there is a new data
        RX_data_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        RX_data_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --to the bytedivider
        EN_SW : IN STD_LOGIC --enable switch

    );
END preliminary_control;

ARCHITECTURE preliminary_control_arch OF preliminary_control IS
   
BEGIN

    assign : PROCESS (EN_SW)
    BEGIN

        IF EN_SW = '0' THEN
            RX_data_OUT <= "01110111"; --FORCE TO 0 THE RX OUTPUT WHEN DISABLED
        ELSE
            RX_data_OUT <= RX_data_IN;
        END IF;
    END PROCESS assign;

   
END preliminary_control_arch;