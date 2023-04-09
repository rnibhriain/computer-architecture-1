----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 16:36:39
-- Design Name: 
-- Module Name: IR_tb - Behavioral
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

entity IR_tb is
end IR_tb;

architecture Behavioral of IR_tb is

    component IR
        Port (IL: in std_logic;
              clk: in std_logic;
              Instruction: in std_logic_vector (31 downto 0);
              DR: out std_logic_vector (4 downto 0);
              SA: out std_logic_vector (4 downto 0);
              SB: out std_logic_vector (4 downto 0);
              opcode: out std_logic_vector (16 downto 0));
    end component;
    
    signal IL, clk: std_logic;
    signal DR, SA, SB: std_logic_vector(4 downto 0);
    signal Instruction: std_logic_vector(31 downto 0);
    signal opcode: std_logic_vector(16 downto 0);

    --Clock period
   constant clk_period : time:= 5 ns;

begin

    uut: IR
    Port Map (
        IL => IL,
        clk => clk,
        Instruction => Instruction,
        DR => DR,
        SA => SA,
        SB => SB,
        opcode => opcode
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
    
        -- opcode = 00000000000000000
        -- DR = 00001  = x"01"
        -- SA = 01000 = x"08"
        -- SB = 11111 = x"1F"
        IL <= '0';
        Instruction <= "00000000000000000000010100011111";
        wait for 10 ns;
        
        IL <= '1';
        wait for 10 ns;
        
        Instruction <= "00000000000000000000000000000000";
        IL <= '0';
        wait for 10 ns;
        
        -- opcode = 00000000000000000
        -- DR = 00000  = x"00"
        -- SA = 00000 = x"00"
        -- SB = 00000 = x"00"
        IL <= '1';
        wait for 10 ns;
    
    wait;
    end process;

end Behavioral;
