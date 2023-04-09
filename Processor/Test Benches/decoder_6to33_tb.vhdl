----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2020 15:59:40
-- Design Name: 
-- Module Name: decoder_tb - Behavioral
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

entity decoder_6to33_tb is
--  Port ( );
end decoder_6to33_tb;

architecture Behavioral of decoder_6to33_tb is

-- Component Declaration for the Unit Under Test (UUT)
 
        COMPONENT decoder_6to33
            PORT(
                A0 : in std_logic;
                A1 : in std_logic;
                A2 : in std_logic;
                A3 : in std_logic;
                A4 : in std_logic;
                A5 : in std_logic;
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
                Q31 : out std_logic;
                Q32 : out std_logic
            );
        END COMPONENT;
        
        -- inputs
    
        signal A0: std_logic := '0';
        signal A1: std_logic := '0';
        signal A2 : std_logic := '0';
        signal A3: std_logic := '0';
        signal A4 : std_logic := '0'; 
        signal A5 : std_logic := '0';
        
        --outputs
        signal Q0: std_logic:= '0';
        signal Q1: std_logic:= '0';
        signal Q2: std_logic:= '0';
        signal Q3: std_logic:= '0';
        signal Q4: std_logic:= '0';
        signal Q5: std_logic:= '0';
        signal Q6: std_logic:= '0';
        signal Q7: std_logic:= '0';
        signal Q8: std_logic:= '0';
        signal Q9: std_logic:= '0';
        signal Q10: std_logic:= '0';
        signal Q11: std_logic:= '0';
        signal Q12: std_logic:= '0';
        signal Q13: std_logic:= '0';
        signal Q14: std_logic:= '0';
        signal Q15: std_logic:= '0';
        signal Q16: std_logic:= '0';
        signal Q17: std_logic:= '0';
        signal Q18: std_logic:= '0';
        signal Q19: std_logic:= '0';
        signal Q20: std_logic:= '0';
        signal Q21: std_logic:= '0';
        signal Q22: std_logic:= '0';
        signal Q23: std_logic:= '0';
        signal Q24: std_logic:= '0';
        signal Q25: std_logic:= '0';
        signal Q26: std_logic:= '0';
        signal Q27: std_logic:= '0';
        signal Q28: std_logic:= '0';
        signal Q29: std_logic:= '0';
        signal Q30: std_logic:= '0';
        signal Q31: std_logic:= '0';
        signal Q32: std_logic:= '0';
    
        
begin
    uut: decoder_6to33 PORT MAP (
        A0 => A0,
        A1 => A1,
        A2 => A2,
        A3 => A3,
        A4 => A4,
        A5 => A5,
        Q0 => Q0,
        Q1 => Q1,
        Q2 => Q2,
        Q3 => Q3,
        Q4 => Q4,
        Q5 => Q5,
        Q6 => Q6,
        Q7 => Q7,
        Q8 => Q8,
        Q9 => Q9,
        Q10 => Q10,
        Q11 => Q11,
        Q12 => Q12,
        Q13 => Q13,
        Q14 => Q14,
        Q15 => Q15,
        Q16 => Q16,
        Q17 => Q17,
        Q18 => Q18,
        Q19 => Q19,
        Q20 => Q20,
        Q21 => Q21,
        Q22 => Q22,
        Q23 => Q23,
        Q24 => Q24,
        Q25 => Q25,
        Q26 => Q26,
        Q27 => Q27,
        Q28 => Q28,
        Q29 => Q29,
        Q30 => Q30,
        Q31 => Q31,
        Q32 => Q32
    );
    stim_proc: process
   begin
   
   -- decode for reg0
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg1
    A0 <= '1';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg2
    A0 <= '0';
    A1 <= '1';
    A2 <= '0';
    A3 <= '0';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg3
    A0 <= '1';
    A1 <= '1';
    A2 <= '0';
    A3 <= '0';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg4
    A0 <= '0';
    A1 <= '0';
    A2 <= '1';
    A3 <= '0';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg5
    A0 <= '1';
    A1 <= '0';
    A2 <= '1';
    A3 <= '0';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg6
    A0 <= '0';
    A1 <= '1';
    A2 <= '1';
    A3 <= '0';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg7
    A0 <= '1';
    A1 <= '1';
    A2 <= '1';
    A3 <= '0';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg8
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '1';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg9
    A0 <= '1';
    A1 <= '0';
    A2 <= '0';
    A3 <= '1';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg10
    A0 <= '0';
    A1 <= '1';
    A2 <= '0';
    A3 <= '1';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg11
    A0 <= '1';
    A1 <= '1';
    A2 <= '0';
    A3 <= '1';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg12
    A0 <= '0';
    A1 <= '0';
    A2 <= '1';
    A3 <= '1';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg13
    A0 <= '1';
    A1 <= '0';
    A2 <= '1';
    A3 <= '1';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg14
    A0 <= '0';
    A1 <= '1';
    A2 <= '1';
    A3 <= '1';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg15
    A0 <= '1';
    A1 <= '1';
    A2 <= '1';
    A3 <= '1';
    A4 <= '0';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg16
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg17
    A0 <= '1';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg18
    A0 <= '0';
    A1 <= '1';
    A2 <= '0';
    A3 <= '0';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg19
    A0 <= '1';
    A1 <= '1';
    A2 <= '0';
    A3 <= '0';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg20
    A0 <= '0';
    A1 <= '0';
    A2 <= '1';
    A3 <= '0';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg21
    A0 <= '1';
    A1 <= '0';
    A2 <= '1';
    A3 <= '0';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg22
    A0 <= '0';
    A1 <= '1';
    A2 <= '1';
    A3 <= '0';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg23
    A0 <= '1';
    A1 <= '1';
    A2 <= '1';
    A3 <= '0';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg24
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '1';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg25
    A0 <= '1';
    A1 <= '0';
    A2 <= '0';
    A3 <= '1';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg26
    A0 <= '0';
    A1 <= '1';
    A2 <= '0';
    A3 <= '1';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg27
    A0 <= '1';
    A1 <= '1';
    A2 <= '0';
    A3 <= '1';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg28
    A0 <= '0';
    A1 <= '0';
    A2 <= '1';
    A3 <= '1';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg29
    A0 <= '1';
    A1 <= '0';
    A2 <= '1';
    A3 <= '1';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg30
    A0 <= '0';
    A1 <= '1';
    A2 <= '1';
    A3 <= '1';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg31
    A0 <= '1';
    A1 <= '1';
    A2 <= '1';
    A3 <= '1';
    A4 <= '1';
    A5 <= '0';
    wait for 10 ns;
    
    -- decode for reg32
    A0 <= '0';
    A1 <= '0';
    A2 <= '0';
    A3 <= '0';
    A4 <= '0';
    A5 <= '1';
    wait for 10 ns;
       
   
   wait;
   
   end process;
    
END;
