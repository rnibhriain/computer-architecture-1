----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2020 17:38:39
-- Design Name: 
-- Module Name: register_file_tb1 - Behavioral
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

entity register_file_tb is
end register_file_tb;

architecture Behavioral of register_file_tb is

    component register_file
        Port ( load: in std_logic;
            dest_address: in std_logic_vector (5 downto 0);
            A_address: in std_logic_vector (5 downto 0);
            B_address: in std_logic_vector (5 downto 0);
            Clk : in std_logic;
            dest_data: in std_logic_vector (31 downto 0);
            A_data: out std_logic_vector (31 downto 0);
            B_data: out std_logic_vector (31 downto 0)
     );
    end component;
    
    signal load, Clk: std_logic;
    signal dest_address, A_address, B_address: std_logic_vector (5 downto 0);
    signal dest_data, A_data, B_data: std_logic_vector (31 downto 0);
    
    --Clock period
   constant clk_period : time:= 5 ns; 

begin
    uut: register_file
        port map(
            load => load,
            dest_address => dest_address,
            A_address => A_address,
            B_address => B_address,
            Clk => Clk,
            dest_data => dest_data,
            A_data => A_data,
            B_data => B_data
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
     
     -- start loading all addresses
     load <= '1';
     
     -- load address 0
     dest_address <= "000000";
     dest_data <= x"0117A431";
     wait for 5 ns;
     
     -- load address 1
     dest_address <= "000001";
     dest_data <= x"0117A430";
     wait for 5 ns;
     
     -- load address 2
     dest_address <= "000010";
     dest_data <= x"0117A42F";
     wait for 5 ns;
     
     -- load address 3
     dest_address <= "000011";
     dest_data <= x"0117A42E";
     wait for 5 ns;
     
     -- load address 4
     dest_address <= "000100";
     dest_data <= x"0117A42D";
     wait for 5 ns;
     
     -- load address 5
     dest_address <= "000101";
     dest_data <= x"0117A42C";
     wait for 5 ns;
     
     -- load address 6
     dest_address <= "000110";
     dest_data <= x"0117A42B";
     wait for 5 ns;
     
     -- load address 7
     dest_address <= "000111";
     dest_data <= x"0117A42A";
     wait for 5 ns;
     
     -- load address 8
     dest_address <= "001000";
     dest_data <= x"0117A429";
     wait for 5 ns;
     
     -- load address 9
     dest_address <= "001001";
     dest_data <= x"0117A428";
     wait for 5 ns;
     
     -- load address 10
     dest_address <= "001010";
     dest_data <= x"0117A427";
     wait for 5 ns;
     
     -- load address 11
     dest_address <= "001011";
     dest_data <= x"0117A426";
     wait for 5 ns;
     
     -- load address 12
     dest_address <= "001100";
     dest_data <= x"0117A425";
     wait for 5 ns;
     
     -- load address 13
     dest_address <= "001101";
     dest_data <= x"0117A424";
     wait for 5 ns;
     
     -- load address 14
     dest_address <= "001110";
     dest_data <= x"0117A423";
     wait for 5 ns;
     
     -- load address 15
     dest_address <= "001111";
     dest_data <= x"0117A422";
     wait for 5 ns;
     
     -- load address 16
     dest_address <= "010000";
     dest_data <= x"0117A421";
     wait for 5 ns;
     
     -- load address 17
     dest_address <= "010001";
     dest_data <= x"0117A420";
     wait for 5 ns;
     
     -- load address 18
     dest_address <= "010010";
     dest_data <= x"0117A41F";
     wait for 5 ns;
     
     -- load address 19
     dest_address <= "010011";
     dest_data <= x"0117A41E";
     wait for 5 ns;
     
     -- load address 20
     dest_address <= "010100";
     dest_data <= x"0117A41D";
     wait for 5 ns;
     
     -- load address 21
     dest_address <= "010101";
     dest_data <= x"0117A41C";
     wait for 5 ns;
     
     -- load address 22
     dest_address <= "010110";
     dest_data <= x"0117A41B";
     wait for 5 ns;
     
     -- load address 23
     dest_address <= "010111";
     dest_data <= x"0117A41A";
     wait for 5 ns;
     
     -- load address 24
     dest_address <= "011000";
     dest_data <= x"0117A419";
     wait for 5 ns;
     
     -- load address 25
     dest_address <= "011001";
     dest_data <= x"0117A418";
     wait for 5 ns;
     
     -- load address 26
     dest_address <= "011010";
     dest_data <= x"0117A417";
     wait for 5 ns;
     
     -- load address 27
     dest_address <= "011011";
     dest_data <= x"0117A416";
     wait for 5 ns;
     
     -- load address 28
     dest_address <= "011100";
     dest_data <= x"0117A415";
     wait for 5 ns;
     
     -- load address 29
     dest_address <= "011101";
     dest_data <= x"0117A414";
     wait for 5 ns;
     
     -- load address 30
     dest_address <= "011110";
     dest_data <= x"0117A413";
     wait for 5 ns;
     
     -- load address 31
     dest_address <= "011111";
     dest_data <= x"0117A412";
     wait for 5 ns;
     
     -- load address 32
     dest_address <= "100000";
     dest_data <= x"0117A411";
     wait for 5 ns;
     
     -- check the databuses
     
     -- address 0 & 1
     A_address <= "000000";
     B_address <= "000001";
     wait for 5 ns;
     
     -- address 2 & 3
     A_address <= "000010";
     B_address <= "000011";
     wait for 5 ns;
     
     -- address 4 & 5
     A_address <= "000100";
     B_address <= "000101";
     wait for 5 ns;
     
     -- address 6 & 7
     A_address <= "000110";
     B_address <= "000111";
     wait for 5 ns;
     
     -- address 8 & 9
     A_address <= "001000";
     B_address <= "001001";
     wait for 5 ns;
     
     -- address 10 & 11
     A_address <= "001010";
     B_address <= "001011";
     wait for 5 ns;
     
     -- address 12 & 13
     A_address <= "001100";
     B_address <= "001101";
     wait for 5 ns;
     
     -- address 14 & 15
     A_address <= "001110";
     B_address <= "001111";
     wait for 5 ns;
     
     -- address 16 & 17
     A_address <= "010000";
     B_address <= "010001";
     wait for 5 ns;
     
     -- address 18 & 19
     A_address <= "010010";
     B_address <= "010011";
     wait for 5 ns;
     
     -- address 20 & 21
     A_address <= "010100";
     B_address <= "010101";
     wait for 5 ns;
     
     -- address 22 & 23
     A_address <= "010110";
     B_address <= "010111";
     wait for 5 ns;
     
     -- address 24 & 25
     A_address <= "011000";
     B_address <= "011001";
     wait for 5 ns;
     
     -- address 26 & 27
     A_address <= "011010";
     B_address <= "011011";
     wait for 5 ns;
     
     -- address 28 & 29
     A_address <= "011100";
     B_address <= "011101";
     wait for 5 ns;
     
     -- address 30 & 31
     A_address <= "011110";
     B_address <= "011111";
     wait for 5 ns;
     
     -- address 32 
     A_address <= "100000";
     wait for 5 ns;
     
     -- check what happens if the load is 0
     
     -- choose random address
     load <= '0';
     dest_address <= "000100";
     dest_data <= x"0117A431";
     wait for 5 ns;
     
     -- value should not change
     A_address <= "000100";
     wait for 5 ns;
     
     wait;
     
    end process;

end Behavioral;
