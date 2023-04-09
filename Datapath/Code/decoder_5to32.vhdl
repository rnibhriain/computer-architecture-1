----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.10.2020 16:28:23
-- Design Name: 
-- Module Name: decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
    Port ( A0 : in std_logic;
        A1 : in std_logic;
        A2 : in std_logic;
        A3 : in std_logic;
        A4 :  in std_logic;
        Q0 : out std_logic;
        Q1 : out std_logic;
        Q2 : out std_logic;
        Q3 : out std_logic;
        Q4 : out std_logic;
        Q5 : out std_logic;
        Q6 : out std_logic;
        Q7 : out std_logic;
        Q8 : out std_logic;
        Q9 : out std_logic;
        Q10 : out std_logic;
        Q11 : out std_logic;
        Q12 : out std_logic;
        Q13 : out std_logic;
        Q14 : out std_logic;
        Q15 : out std_logic;
        Q16 : out std_logic;
        Q17 : out std_logic;
        Q18 : out std_logic;
        Q19 : out std_logic;
        Q20 : out std_logic;
        Q21 : out std_logic;
        Q22 : out std_logic;
        Q23 : out std_logic;
        Q24 : out std_logic;
        Q25 : out std_logic;
        Q26 : out std_logic;
        Q27 : out std_logic;
        Q28 : out std_logic;
        Q29 : out std_logic;
        Q30 : out std_logic;
        Q31 : out std_logic
        );
end decoder;


architecture Behavioral of decoder is
    begin
        Q0<= ((not A0) and (not A1) and (not A2) and (not A3) and (not A4)) after 5 ns;
        Q1<= ((A0) and (not A1) and (not A2) and (not A3) and (not A4)) after 5 ns;
        Q2<= ((not A0) and (A1) and (not A2) and (not A3) and (not A4)) after 5 ns;
        Q3<= ((A0) and (A1) and (not A2) and (not A3) and (not A4)) after 5 ns;
        Q4 <= ((not A0) and (not A1) and (A2) and (not A3) and (not A4)) after 5ns;
        Q5 <= (( A0) and (not A1) and (A2) and (not A3) and (not A4)) after 5ns;
        Q6 <= ((not A0) and (A1) and (A2) and (not A3) and (not A4)) after 5ns;
        Q7 <= ((A0) and (A1) and (A2) and (not A3) and (not A4)) after 5ns;
        Q8<= ((not A0) and (not A1) and (not A2) and (A3) and (not A4)) after 5 ns;
        Q9<= ((A0) and (not A1) and (not A2) and (A3) and (not A4)) after 5 ns;
        Q10<= ((not A0) and (A1) and (not A2) and (A3) and (not A4)) after 5 ns;
        Q11<= ((A0) and (A1) and (not A2) and (A3) and (not A4)) after 5 ns;
        Q12<= ((not A0) and (not A1) and (A2) and (A3) and (not A4)) after 5 ns;
        Q13<= ((A0) and (not A1) and (A2) and (A3) and (not A4)) after 5 ns;
        Q14<= ((not A0) and (A1) and (A2) and (A3) and (not A4)) after 5 ns;
        Q15<= ((A0) and (A1) and (A2) and (A3) and (not A4)) after 5 ns;
        Q16<= ((not A0) and (not A1) and (not A2) and (not A3) and (A4)) after 5 ns;
        Q17<= ((A0) and (not A1) and (not A2) and (not A3) and (A4)) after 5 ns;
        Q18<= ((not A0) and (A1) and (not A2) and (not A3) and (A4)) after 5 ns;
        Q19<= ((A0) and (A1) and (not A2) and (not A3) and (A4)) after 5 ns;
        Q20<= ((not A0) and (not A1) and (A2) and (not A3) and (A4)) after 5 ns;
        Q21<= ((A0) and (not A1) and (A2) and (not A3) and (A4)) after 5 ns;
        Q22<= ((not A0) and (A1) and (A2) and (not A3) and (A4)) after 5 ns;
        Q23<= ((A0) and (A1) and (A2) and (not A3) and (A4)) after 5 ns;
        Q24<= ((not A0) and (not A1) and (not A2) and (A3) and (A4)) after 5 ns;
        Q25<= ((A0) and (not A1) and (not A2) and (A3) and (A4)) after 5 ns;
        Q26<= ((not A0) and (A1) and (not A2) and (A3) and (A4)) after 5 ns;
        Q27<= ((A0) and (A1) and (not A2) and (A3) and (A4)) after 5 ns;
        Q28<= ((not A0) and (not A1) and (A2) and (A3) and (A4)) after 5 ns;
        Q29<= ((A0) and (not A1) and (A2) and (A3) and (A4)) after 5 ns;
        Q30<= ((not A0) and (A1) and (A2) and (A3) and (A4)) after 5 ns;
        Q31<= ((A0) and (A1) and (A2) and (A3) and (A4)) after 5 ns;
end Behavioral;
