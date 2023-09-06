LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY bcd_7seg IS
PORT (
entra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
sai : OUT STD_LOGIC_VECTOR(6 DownTO 0)
);
END bcd_7seg;
ARCHITECTURE trans OF bcd_7seg IS
BEGIN
PROCESS (entra)
BEGIN
CASE entra IS
WHEN "0000" =>
sai <= NOT("11111100");
WHEN "0001" =>
sai <= NOT("01100000");
WHEN "0010" =>
sai <= NOT("11011010");
WHEN "0011" =>
sai <= NOT("11110010");
WHEN "0100" =>
sai <= NOT("01100110");
WHEN "0101" =>
sai <= NOT("10110110");
WHEN "0110" =>
sai <= NOT("10111110");
WHEN "0111" =>
sai <= NOT("11100000");
WHEN "1000" =>
sai <= NOT("11111110");
WHEN "1001" =>
sai <= NOT("11110110");
WHEN OTHERS =>
sai <= NOT("00000000");
END CASE;
END PROCESS;

END trans;
