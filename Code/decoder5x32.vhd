library ieee;
use ieee.std_logic_1164.all;

-- 5x32 Decoder with an Enable Signal

Entity decoder5x32 is
    port ( En : in std_logic;
           S : in std_logic_vector(4 downto 0);
           dataout : out std_logic_vector(31 downto 0));
   end entity decoder5x32;
   
Architecture RTL of decoder5x32 is 
    begin
        dataout <= "00000000000000000000000000000000" when En = '0'
        else "00000000000000000000000000000001" when S = "00000"
        else "00000000000000000000000000000010" when S = "00001"
        else "00000000000000000000000000000100" when S = "00010"
        else "00000000000000000000000000001000" when S = "00011"
        else "00000000000000000000000000010000" when S = "00100"
        else "00000000000000000000000000100000" when S = "00101"
        else "00000000000000000000000001000000" when S = "00110"
        else "00000000000000000000000010000000" when S = "00111"
        else "00000000000000000000000100000000" when S = "01000"
        else "00000000000000000000001000000000" when S = "01001"
        else "00000000000000000000010000000000" when S = "01010"
        else "00000000000000000000100000000000" when S = "01011"
        else "00000000000000000001000000000000" when S = "01100"
        else "00000000000000000010000000000000" when S = "01101"
        else "00000000000000000100000000000000" when S = "01110"
        else "00000000000000001000000000000000" when S = "01111"
        else "00000000000000010000000000000000" when S = "10000"
        else "00000000000000100000000000000000" when S = "10001"
        else "00000000000001000000000000000000" when S = "10010"
        else "00000000000010000000000000000000" when S = "10011"
        else "00000000000100000000000000000000" when S = "10100"
        else "00000000001000000000000000000000" when S = "10101"
        else "00000000010000000000000000000000" when S = "10110"
        else "00000000100000000000000000000000" when S = "10111"
        else "00000001000000000000000000000000" when S = "11000"
        else "00000010000000000000000000000000" when S = "11001"
        else "00000100000000000000000000000000" when S = "11010"
        else "00001000000000000000000000000000" when S = "11011"
        else "00010000000000000000000000000000" when S = "11100"
        else "00100000000000000000000000000000" when S = "11101"
        else "01000000000000000000000000000000" when S = "11110"
        else "10000000000000000000000000000000" when S = "11111";
end RTL;