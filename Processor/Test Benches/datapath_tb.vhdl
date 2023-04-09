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
            instruction_address: in std_logic_vector (31 downto 0);
            memory_data: in std_logic_vector (31 downto 0);
            TA: in std_logic;
            DR: in std_logic_vector (4 downto 0);            
            TD: in std_logic;
            SA: in std_logic_vector (4 downto 0);
            TB: in std_logic;
            SB: in std_logic_vector (4 downto 0);
            RW: in std_logic;
            MD: in std_logic;
            MM: in std_logic;
            MB: in std_logic;
            FS: in std_logic_vector (4 downto 0);
            Clk: in std_logic;
            V: out std_logic;
            C: out std_logic;
            N: out std_logic;
            Z: out std_logic;
            m_out: out std_logic_vector (31 downto 0);
            b_out: out std_logic_vector (31 downto 0);
           funit_out: out std_logic_vector (31 downto 0));
    end component;
    
    signal memory_data, instruction_address, b_out, m_out, funit_out: std_logic_vector (31 downto 0);
    signal Clk, V, C, N, Z, TA, TD, TB, RW, MD, MM, MB: std_logic;
    signal FS, DR, SA, SB: std_logic_vector (4 downto 0);
    
    --Clock period
   constant clk_period : time:= 5 ns;
    
begin
    uut: datapath
        port map (
            instruction_address => instruction_address,
            memory_data => memory_data,
            FS => FS,
            Clk => Clk,
            TA => TA,
            DR => DR,
            TD => TD,
            SA => SA,
            TB => TB,
            SB => SB,
            RW => RW,
            MD => MD,
            MM => MM,
            MB => MB,
            m_out => m_out,
            b_out => b_out,
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
     
     -- check that loading registers works
     TA <= '0';
     TB <= '0';
     TD <= '0';
     RW <= '1';
     MM <= '0';
     MB <= '0';
     MD <= '1';
     instruction_address <= x"00000000";
     
     -- reg 0
     
     memory_data <= x"0117A431";
     DR <= "00000";
     FS <= "00000";
     wait for 10 ns;
     
     -- load the register to check it 
     SA <= "00000";
     SB <= "00000";
     wait for 5 ns;
     
     
     -- reg 1
     
     memory_data <= x"0117A430";
     DR <= "00001";
     FS <= "00000";
     wait for 10 ns;
     
     -- load the register to check it 
     SA <= "00001";
     SB <= "00001";
     wait for 5 ns;
     
     -- reg 2
     
     memory_data <= x"0117A42F";
     FS <= "00000";
     DR <= "00010";
     wait for 10 ns;
     
    -- load the register to check it 
     SA <= "00010";
     SB <= "00010";
     wait for 5 ns;
     
     -- reg 3
     
     memory_data <= x"0117A42E";
     FS <= "00000";
     DR <= "00011";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "00011";
     SB <= "00011";
     wait for 5 ns;
     
     -- reg 4
     
     memory_data <= x"0117A42D";
     FS <= "00000";
     DR <= "00100";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "00100";
     SB <= "00100";
     wait for 5 ns;
     
     -- reg 5
     
     memory_data <= x"0117A42C";
     FS <= "00000";
     DR <= "00101";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "00101";
     SB <= "00101";
     wait for 5 ns;
     
     -- reg 6
     
     memory_data <= x"0117A42B";
     FS <= "00000";
     DR <= "00110";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "00110";
     SB <= "00110";
     wait for 5 ns;
     
     -- reg 7
     
     memory_data <= x"0117A42A";
     FS <= "00000";
     DR <= "00111";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "00111";
     SB <= "00111";
     wait for 5 ns;
     
     -- reg 8
     
     memory_data <= x"0117A429";
     FS <= "00000";
     DR <= "01000";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "01000";
     SB <= "01000";
     wait for 5 ns;
     
     -- reg 9
     
     memory_data <= x"0117A428";
     FS <= "00000";
     DR <= "01001";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "01001";
     SB <= "01001";
     wait for 5 ns;
     
     -- reg 10
     
     memory_data <= x"0117A427";
     FS <= "00000";
     DR <= "01010";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "01010";
     SB <= "01010";
     wait for 5 ns;
     
     -- reg 11
     
     memory_data <= x"0117A426";
     FS <= "00000";
     DR <= "01011";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "01011";
     SB <= "01011";
     wait for 5 ns;
     
     -- reg 12
     
     memory_data <= x"0117A425";
     FS <= "00000";
     DR <= "01100";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "01100";
     SB <= "01100";
     wait for 5 ns;
     
     -- reg 13
     
     memory_data <= x"0117A424";
     FS <= "00000";
     DR <= "01101";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "01101";
     SB <= "01101";
     wait for 5 ns;
     
     -- reg 14
     
     memory_data <= x"0117A423";
     FS <= "00000";
     DR <= "01110";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "01110";
     SB <= "01110";
     wait for 5 ns;
     
     -- reg 15
     
     memory_data <= x"0117A422";
     FS <= "00000";
     DR <= "01111";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "01111";
     SB <= "01111";
     wait for 5 ns;
     
     -- reg 16
     
     memory_data <= x"0117A421";
     FS <= "00000";
     DR <= "10000";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "10000";
     SB <= "10000";
     wait for 5 ns;
     
     -- reg 17
     
     memory_data <= x"0117A420";
     FS <= "00000";
     DR <= "10001";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "10001";
     SB <= "10001";
     wait for 5 ns;
     
     -- reg 18
     
     memory_data <= x"0117A41F";
     FS <= "00000";
     DR <= "10010";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "10010";
     SB <= "10010";
     wait for 5 ns;
     
     -- reg 19
     
     memory_data <= x"0117A41E";
     FS <= "00000";
     DR <= "10011";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "10011";
     SB <= "10011";
     wait for 5 ns;
     
     -- reg 20
     
     memory_data <= x"0117A41D";
     FS <= "00000";
     DR <= "10100";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "10100";
     SB <= "10100";
     wait for 5 ns;
     
     -- reg 21
     
     memory_data <= x"0117A41C";
     FS <= "00000";
     DR <= "10101";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "10101";
     SB <= "10101";
     wait for 5 ns;
     
     -- reg 22
     
     memory_data <= x"0117A41B";
     FS <= "00000";
     DR <= "10110";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "10110";
     SB <= "10110";
     wait for 5 ns;
     
     -- reg 23
     
     memory_data <= x"0117A41A";
     FS <= "00000";
     DR <= "10111";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "10111";
     SB <= "10111";
     wait for 5 ns;
     
     -- reg 24
     
     memory_data <= x"0117A419";
     FS <= "00000";
     DR <= "11000";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "11000";
     SB <= "11000";
     wait for 5 ns;
     
     -- reg 25
     
     memory_data <= x"0117A418";
     FS <= "00000";
     DR <= "11001";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "11001";
     SB <= "11001";
     wait for 5 ns;
     
     -- reg 26
     
     memory_data <= x"0117A417";
     FS <= "00000";
     DR <= "11010";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "11010";
     SB <= "11010";
     wait for 5 ns;
     
     -- reg 27
     
     memory_data <= x"0117A416";
     FS <= "00000";
     DR <= "11011";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "11011";
     SB <= "11011";
     wait for 5 ns;
     
     -- reg 28
     
     memory_data <= x"0117A415";
     FS <= "00000";
     DR <= "11100";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "11100";
     SB <= "11100";
     wait for 5 ns;
     
     -- reg 29
     
     memory_data <= x"0117A414";
     FS <= "00000";
     DR <= "11101";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "11101";
     SB <= "11101";
     wait for 5 ns;
     
     -- reg 30
     
     memory_data <= x"0117A413";
     FS <= "00000";
     DR <= "11110";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "11110";
     SB <= "11110";
     wait for 5 ns;
     
     -- reg 31
     
     memory_data <= x"0117A412";
     FS <= "00000";
     DR <= "11111";
     wait for 10 ns;
     
     -- load the register to check it
     SA <= "11111";
     SB <= "11111";
     wait for 5 ns;
     
     -- reg 32
     
     memory_data <= x"0117A411";     
     TD <= '1';
     FS <= "00000";
     DR <= "00000";
     wait for 10 ns;
     
     -- load the register to check it
     TA <= '1';
     TB <= '1';
     SA <= "00000";
     SB <= "00000";
     wait for 10 ns;
     
     -- Using the Functional Unit funit_out
     
     RW <= '0';
     TD <= '0';
     TA <= '0';
     TB <= '0';
     
     -- should be x"0117A431" F = A
     
     FS <= "00000";
     SA <= "00000";
     wait for 10 ns;
     
     -- should be x"0117A432" F = A + 1
     
     FS <= "00001";
     SA <= "00000";
     wait for 10 ns;
     
     -- should be x"0117A43F" F = A + B
     
     SB <= "01110";
     MB <= '1';
     wait for 10 ns;
     
     FS <= "00010";
     wait for 10 ns;
     
     -- should be x"0117A440" F = A + B + 1
     
     FS <= "00011";
     DR <= "00001";
     memory_data <= x"FFFFFFFF";
     wait for 10 ns;
     
     -- should be x"0117A431" F = A + ~B
     
     MD <= '1';
     RW <= '1';
     MB <= '0';
     DR <= "00001";
     SA <= "00000";
     SB <= "00001";
     wait for 10 ns;
     
     -- there will be intermediate values here
     
     RW <= '0';
     DR <= "00000";
     FS <= "00100";
     wait for 10 ns;
     
     -- should be x"0117A432" F = A + ~B + 1
     
     FS <= "00101";
     wait for 10 ns;
     
     -- should be x"0117A430" F = A -1
     
     FS <= "00110";
     wait for 10 ns;
     
     -- should be x"0117A431" F = A 
     
     FS <= "00111";
     wait for 10 ns;
     
     -- check the logic unit
     
     -- load register 0
     RW <= '1';
     memory_data <= x"FFFFFFFF";
     DR <= "00000";
     wait for 10 ns;
     
     RW <= '0';
     SA <= "00000";
     SB <= "00001";
     wait for 10 ns; 
     
     -- load register 1
     RW <= '1';
     memory_data <= x"F0F0F0F0";
     DR <= "00001";
     wait for 10 ns;
     
     RW <= '0';
     SA <= "00000";
     SB <= "00001";
     wait for 10 ns;   
       
     -- A ^ B should be x"F0F0F0F0"
     FS <= "01000";
     wait for 10 ns;
     
     -- A V B should be x"FFFFFFFF"
     FS <= "01010";
     wait for 10 ns;
     
     -- load register 1
     RW <= '1';
     memory_data <= x"0F0F0000";
     wait for 10 ns;
     
     RW <= '0';
     SA <= "00000";
     SB <= "00001";
     wait for 10 ns; 
     
     -- ~A should be x"00000000"
     FS <= "01110";
     wait for 10 ns;
     
     -- A xor B should be x"F0F0FFFF"
     FS <= "01100";
     wait for 10 ns;
    
     
     -- check the shifter
     
     -- load register 1
     RW <= '1';
     memory_data <= x"FFFFFFFF";
     wait for 10 ns;
     
     RW <= '0';
     SA <= "00000";
     SB <= "00001";
     wait for 10 ns; 
     
     -- don't shift x"FFFFFFFF";
     FS <= "10000";
     wait for 10 ns;
     
     -- shift left x"FFFFFFFE"; 
     FS <= "11000";
     wait for 10 ns;
     
     -- shift right x"7FFFFFFF";
     FS <= "10100";
     wait for 10 ns;
    
     wait;
     
     end process;

end Behavioral;
