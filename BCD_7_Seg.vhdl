LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY bcd IS PORT (
    I: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    Segs: OUT std_logic_vector (1 TO 7));
END bcd;
ARCHITECTURE Behavioral OF bcd IS
BEGIN
    PROCESS(I)
    BEGIN
        CASE I IS
        WHEN "0000" => Segs <= "1111110";
        WHEN "0001" => Segs <= "0110000";
        WHEN "0010" => Segs <= "1101101";
        WHEN "0011" => Segs <= "1111001";
        WHEN "0100" => Segs <= "0110011";
        WHEN "0101" => Segs <= "1011011";
        WHEN "0110" => Segs <= "1011111";
        WHEN "0111" => Segs <= "1110000";
        WHEN "1000" => Segs <= "1111111";
        WHEN "1001" => Segs <= "1110011";
        WHEN OTHERS => Segs <= "0000000";
        END CASE;
    END PROCESS;
END Behavioral;