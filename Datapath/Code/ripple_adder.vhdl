----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.11.2020 15:05:27
-- Design Name: 
-- Module Name: ripple_adder - Behavioral
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

entity ripple_adder is
  Port (b: in std_logic_vector(31 downto 0);
        a: in std_logic_vector(31 downto 0);
        Cin : in std_logic;
        S: out std_logic_vector(31 downto 0);
        Cout: out std_logic;
        V: out std_logic  );
end ripple_adder;

architecture structural_4 of ripple_adder is
    component full_adder
        Port(x, y, Cin: in std_logic;
             s, cout: out std_logic);
    end component; 
    signal C: std_logic_vector (31 downto 0);
    signal C_last: std_logic;
begin
    Bit0: full_adder
        port map (
            x => b(0),
            y => a(0), 
            Cin => Cin, 
            s => S(0), 
            Cout => C(1)
         );
    Bit1: full_adder
        port map (
            x => b(1), 
            y => a(1), 
            Cin => C(1), 
            s => S(1), 
            Cout => C(2)
        );
    Bit2: full_adder
        port map (
            x => b(2), 
            y => a(2), 
            Cin => C(2), 
            s => S(2), 
            Cout => C(3)
        );    
    Bit3: full_adder
        port map (
            x => b(3), 
            y => a(3), 
            Cin => C(3), 
            s => S(3), 
            Cout => C(4)
        );
    Bit4: full_adder
        port map (
            x => b(4), 
            y => a(4), 
            Cin => C(4), 
            s => S(4), 
            Cout => C(5)
         );
    Bit5: full_adder
        port map (
            x => b(5), 
            y => a(5), 
            Cin => C(5), 
            s => S(5), 
            Cout => C(6)
        );
    Bit6: full_adder
        port map (
            x => b(6), 
            y => a(6), 
            Cin => C(6), 
            s => S(6), 
            Cout => C(7)
        );   
    Bit7: full_adder
        port map (
            x => b(7), 
            y => a(7), 
            Cin => C(7), 
            s => S(7), 
            Cout => C(8)
        ); 
    Bit8: full_adder
        port map (
            x => b(8), 
            y => a(8), 
            Cin => C(8), 
            s => S(8), 
            Cout => C(9)
        );
    Bit9: full_adder
        port map (
            x => b(9), 
            y => a(9), 
            Cin => C(9), 
            s => S(9), 
            Cout => C(10)
        );
    Bit10: full_adder
        port map (
            x => b(10), 
            y => a(10), 
            Cin => C(10), 
            s => S(10), 
            Cout => C(11)
        );    
    Bit11: full_adder
        port map (
            x => b(11), 
            y => a(11), 
            Cin => C(11), 
            s => S(11), 
            Cout => C(12)
        );  
    Bit12: full_adder
        port map (
            x => b(12), 
            y => a(12), 
            Cin => C(12), 
            s => S(12), 
            Cout => C(13)
        );  
    Bit13: full_adder
        port map (
            x => b(13), 
            y => a(13), 
            Cin => C(13), 
            s => S(13), 
            Cout => C(14)
        );  
    Bit14: full_adder
        port map (
            x => b(14), 
            y => a(14), 
            Cin => C(14), 
            s => S(14), 
            Cout => C(15)
        );      
    Bit15: full_adder
        port map (
            x => b(15), 
            y => a(15), 
            Cin => C(15), 
            s => S(15), 
            Cout => C(16)
        );  
    Bit16: full_adder
        port map (
            x => b(16), 
            y => a(16), 
            Cin => C(16), 
            s => S(16), 
            Cout => C(17)
        );  
    Bit17: full_adder
        port map (
            x => b(17), 
            y => a(17), 
            Cin => C(17), 
            s => S(17), 
            Cout => C(18)
        );  
    Bit18: full_adder
        port map (
            x => b(18), 
            y => a(18), 
            Cin => C(18), 
            s => S(18), 
            Cout => C(19)
        );      
    Bit19: full_adder
        port map (
            x => b(19), 
            y => a(19), 
            Cin => C(19), 
            s => S(19), 
            Cout => C(20)
        );  
    Bit20: full_adder
        port map (
            x => b(20), 
            y => a(20), 
            Cin => C(20), 
            s => S(20), 
            Cout => C(21)
        );  
    Bit21: full_adder
        port map (
            x => b(21), 
            y => a(21), 
            Cin => C(21), 
            s => S(21), 
            Cout => C(22)
        );  
    Bit22: full_adder
        port map (
            x => b(22), 
            y => a(22), 
            Cin => C(22), 
            s => S(22), 
            Cout => C(23)
        );      
    Bit23: full_adder
        port map (
            x => b(23), 
            y => a(23), 
            Cin => C(23), 
            s => S(23), 
            Cout => C(24)
        );   
    Bit24: full_adder
        port map (
            x => b(24), 
            y => a(24), 
            Cin => C(24), 
            s => S(24), 
            Cout => C(25)
        );  
    Bit25: full_adder
        port map (
            x => b(25), 
            y => a(25), 
            Cin => C(25), 
            s => S(25), 
            Cout => C(26)
        );  
    Bit26: full_adder
        port map (
            x => b(26), 
            y => a(26), 
            Cin => C(26), 
            s => S(26), 
            Cout => C(27)
        );      
    Bit27: full_adder
        port map (
            x => b(27), 
            y => a(27), 
            Cin => C(27), 
            s => S(27), 
            Cout => C(28)
        );  
    Bit28: full_adder
        port map (
            x => b(28), 
            y => a(28), 
            Cin => C(28), 
            s => S(28), 
            Cout => C(29)
        );  
    Bit29: full_adder
        port map (
            x => b(29), 
            y => a(29), 
            Cin => C(29), 
            s => S(29), 
            Cout => C(30)
        );  
    Bit30: full_adder
        port map (
            x => b(30), 
            y => a(30), 
            Cin => C(30), 
            s => S(30), 
            Cout => C(31)
        );      
    Bit31: full_adder
        port map (
            x => b(31), 
            y => a(31), 
            Cin => C(31), 
            s => S(31), 
            Cout => C_last
        );  
          
    Cout <= C_last;  
    V <= C(31) xor C_last;    
       
end structural_4;
