----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 15:48:12
-- Design Name: 
-- Module Name: IR - Behavioral
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

entity IR is
  Port (IL: in std_logic;
        clk: in std_logic;
        Instruction: in std_logic_vector (31 downto 0);
        DR: out std_logic_vector (4 downto 0);
        SA: out std_logic_vector (4 downto 0);
        SB: out std_logic_vector (4 downto 0);
        opcode: out std_logic_vector (16 downto 0));
end IR;

architecture Behavioral of IR is

begin

    DR <= Instruction(14 downto 10) after 1 ns when clk = '1' and IL = '1';
    SA <= Instruction(9 downto 5) after 1 ns when clk = '1' and IL = '1';
    SB <= Instruction(4 downto 0) after 1 ns when clk = '1' and IL = '1';
    opcode <= Instruction(31 downto 15) after 1 ns when clk = '1' and IL = '1';

end Behavioral;
