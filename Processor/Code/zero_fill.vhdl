----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.12.2020 15:05:54
-- Design Name: 
-- Module Name: zero_fill - Behavioral
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

entity zero_fill is
  Port (SB: in std_logic_vector (4 downto 0);
        output: out std_logic_vector (31 downto 0));
end zero_fill;

architecture Behavioral of zero_fill is

    signal zero_fill: std_logic_vector(31 downto 0);

begin

    zero_fill(4 downto 0) <= SB;
    zero_fill(31 downto 5) <= "000000000000000000000000000";

    output <= zero_fill;

end Behavioral;
