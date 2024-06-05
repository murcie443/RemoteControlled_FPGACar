LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY clock100hz IS
    PORT (
        clk_in : IN STD_LOGIC;
        clk_out : OUT STD_LOGIC
    );
END clock100hz;

ARCHITECTURE clock100hz_arch OF clock100hz IS
    SIGNAL clk_out_signal : STD_LOGIC := '0';
    SIGNAL counter : STD_LOGIC_VECTOR(17 DOWNTO 0) := (OTHERS => '0');
BEGIN

    PROCESS (clk_in)
    BEGIN
        IF rising_edge(clk_in) THEN

            IF counter = "1111010111000111" THEN --counter=249999
                clk_out_signal <= NOT clk_out_signal;
                counter <= (OTHERS => '0');
            ELSE
                counter <= counter + '1';
            END IF;
        END IF;
    END PROCESS;

    clk_out <= clk_out_signal;
END clock100hz_arch;