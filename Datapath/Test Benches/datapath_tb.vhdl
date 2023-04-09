----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 21:44:48
-- Design Name: 
-- Module Name: datapath_tb - Behavioral
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

entity datapath_tb is
end datapath_tb;

architecture Behavioral of datapath_tb is

    component datapath
        Port (
         data_in, constant_in: in std_logic_vector(31 downto 0);
         Control_Word: in std_logic_vector (22 downto 0);
         Clk: in std_logic;
         data_out, address_out, funit_out: out std_logic_vector (31 downto 0);
         V: out std_logic;
         C: out std_logic;
         N: out std_logic;
         Z: out std_logic);
    end component;
    
    signal data_in, constant_in, data_out, address_out, funit_out: std_logic_vector (31 downto 0);
    signal Clk, V, C, N, Z: std_logic;
    signal Control_Word: std_logic_vector (22 downto 0);
    
    --Clock period
   constant clk_period : time:= 5 ns;
    
begin
    uut: datapath
        port map (
            data_in => data_in,
            constant_in => constant_in,
            Control_Word => Control_Word,
            Clk => Clk,
            data_out => data_out,
            address_out => address_out,
            funit_out => funit_out,
            V => V,
            C => C,
            N => N,
            Z => Z
        );
        
   --Clock Process
    clk_process : process
    begin
        Clk <= '0';
        wait for clk_period/2;
        Clk <= '1';
        wait for clk_period/2;
    
    end process;
    
    stim_process: process
     begin
     
     constant_in <= x"00000000";
     
     -- check that loading registers works
     
     -- reg 0
     
     data_in <= x"0117A431";
     Control_Word <= "00000000000000000000011";
     wait for 5 ns;
     
     -- reg 1
     
     data_in <= x"0117A430";
     Control_Word <= "00001000010000100000011";
     wait for 5 ns;
     
     -- reg 2
     
     data_in <= x"0117A42F";
     Control_Word <= "00010000100001000000011";
     wait for 5 ns;
     
     -- reg 3
     
     data_in <= x"0117A42E";
     Control_Word <= "00011000110001100000011";
     wait for 5 ns;
     
     -- reg 4
     
     data_in <= x"0117A42D";
     Control_Word <= "00100001000010000000011";
     wait for 5 ns;
     
     -- reg 5
     
     data_in <= x"0117A42C";
     Control_Word <= "00101001010010100000011";
     wait for 5 ns;
     
     -- reg 6
     
     data_in <= x"0117A42B";
     Control_Word <= "00110001100011000000011";
     wait for 5 ns;
     
     -- reg 7
     
     data_in <= x"0117A42A";
     Control_Word <= "00111001110011100000011";
     wait for 5 ns;
     
     -- reg 8
     
     data_in <= x"0117A429";
     Control_Word <= "01000010000100000000011";
     wait for 5 ns;
     
     -- reg 9
     
     data_in <= x"0117A428";
     Control_Word <= "01001010010100100000011";
     wait for 5 ns;
     
     -- reg 10
     
     data_in <= x"0117A427";
     Control_Word <= "01010010100101000000011";
     wait for 5 ns;
     
     -- reg 11
     
     data_in <= x"0117A426";
     Control_Word <= "01011010110101100000011";
     wait for 5 ns;
     
     -- reg 12
     
     data_in <= x"0117A425";
     Control_Word <= "01100011000110000000011";
     wait for 5 ns;
     
     -- reg 13
     
     data_in <= x"0117A424";
     Control_Word <= "01101011010110100000011";
     wait for 5 ns;
     
     -- reg 14
     
     data_in <= x"0117A423";
     Control_Word <= "01110011100111000000011";
     wait for 5 ns;
     
     -- reg 15
     
     data_in <= x"0117A422";
     Control_Word <= "01111011110111100000011";
     wait for 5 ns;
     
     -- reg 16
     
     data_in <= x"0117A421";
     Control_Word <= "10000100001000000000011";
     wait for 5 ns;
     
     -- reg 17
     
     data_in <= x"0117A420";
     Control_Word <= "10001100011000100000011";
     wait for 5 ns;
     
     -- reg 18
     
     data_in <= x"0117A41F";
     Control_Word <= "10010100101001000000011";
     wait for 5 ns;
     
     -- reg 19
     
     data_in <= x"0117A41E";
     Control_Word <= "10011100111001100000011";
     wait for 5 ns;
     
     -- reg 20
     
     data_in <= x"0117A41D";
     Control_Word <= "10100101001010000000011";
     wait for 5 ns;
     
     -- reg 21
     
     data_in <= x"0117A41C";
     Control_Word <= "10101101011010100000011";
     wait for 5 ns;
     
     -- reg 22
     
     data_in <= x"0117A41B";
     Control_Word <= "10110101101011000000011";
     wait for 5 ns;
     
     -- reg 23
     
     data_in <= x"0117A41A";
     Control_Word <= "10111101111011100000011";
     wait for 5 ns;
     
     -- reg 24
     
     data_in <= x"0117A419";
     Control_Word <= "11000110001100000000011";
     wait for 5 ns;
     
     -- reg 25
     
     data_in <= x"0117A418";
     Control_Word <= "11001110011100100000011";
     wait for 5 ns;
     
     -- reg 26
     
     data_in <= x"0117A417";
     Control_Word <= "11010110101101000000011";
     wait for 5 ns;
     
     -- reg 27
     
     data_in <= x"0117A416";
     Control_Word <= "11011110111101100000011";
     wait for 5 ns;
     
     -- reg 28
     
     data_in <= x"0117A415";
     Control_Word <= "11100111001110000000011";
     wait for 5 ns;
     
     -- reg 29
     
     data_in <= x"0117A414";
     Control_Word <= "11101111011110100000011";
     wait for 5 ns;
     
     -- reg 30
     
     data_in <= x"0117A413";
     Control_Word <= "11110111101111000000011";
     wait for 5 ns;
     
     -- reg 31
     
     data_in <= x"0117A412";
     Control_Word <= "11111111111111100000011";
     wait for 5 ns;
     
     -- two examples of checking the contents of registers
     
     Control_Word <= "00000000000000000000010";
     wait for 5 ns;
     
     Control_Word <= "00000000100000000000010";
     wait for 5 ns;
     
     -- Using the Functional Unit funit_out
     
     -- should be x"0117A431" F = A
     
     constant_in <= x"FFFFFFFF";
     Control_Word <= "00000000000000010000000";
     wait for 5 ns;
     
     -- should be x"0117A432" F = A + 1
     
     constant_in <= x"FFFFFFFF";
     Control_Word <= "00000000000000010000100";
     wait for 5 ns;
     
     -- should be x"0117A43F" F = A + B
     
     constant_in <= x"0000000E";
     Control_Word <= "00000000000000010001000";
     wait for 5 ns;
     
     -- should be x"0117A440" F = A + B + 1
     
     constant_in <= x"0000000E";
     Control_Word <= "00000000000000010001100";
     wait for 5 ns;
     
     -- should be x"0117A431" F = A + ~B
     
     constant_in <= x"FFFFFFFF";
     Control_Word <= "00000000000000010010000";
     wait for 5 ns;
     
     -- should be x"0117A432" F = A + ~B + 1
     
     constant_in <= x"FFFFFFFF";
     Control_Word <= "00000000000000010010100";
     wait for 5 ns;
     
     -- should be x"0117A430" F = A -1
     
     constant_in <= x"FFFFFFFF";
     Control_Word <= "00000000000000010011000";
     wait for 5 ns;
     
     -- should be x"0117A431" F = A 
     
     constant_in <= x"FFFFFFFF";
     Control_Word <= "00000000000000010011100";
     wait for 5 ns;
     
     -- check the logic unit
     
     data_in <= x"F0F0F0F0";
     Control_Word <= "00000000000000000000011";
     wait for 10 ns;
     
     -- A ^ B should be x"F0F0F0F0"
     constant_in <= x"F0F0F0F0";
     Control_Word <= "00000000000000010100000";
     wait for 5 ns;
     
     -- A V B should be x"FFFFFFFF"
     constant_in <= x"0F0F0F0F";
     Control_Word <= "00000000000000010101000";
     wait for 10 ns;
     
     -- A xor B should be x"FFFFF0F0"
     constant_in <= x"0F0F0000";
     Control_Word <= "00000000000000010110000";
     wait for 10 ns;
     
     -- ~A should be x"0F0F0F0F"
     constant_in <= x"0F0F0000";
     Control_Word <= "00000000000000010111000";
     wait for 10 ns;
     
     -- check the shifter
     
     -- don't shift x"FFFFFFFF";
     constant_in <= x"FFFFFFFF";
     Control_Word <= "00000000000000011000000";
     wait for 10 ns;
     
     -- shift left x"7FFFFFFF";
     constant_in <= x"FFFFFFFF";
     Control_Word <= "00000000000000011010000";
     wait for 10 ns;
     
     -- shift right x"FFFFFFFE"; and load into reg0
     constant_in <= x"FFFFFFFF";
     Control_Word <= "00000000000000011100001";
     wait for 10 ns;
    
     wait;
     
     end process;

end Behavioral;
