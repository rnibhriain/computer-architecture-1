----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 13:39:47
-- Design Name: 
-- Module Name: extend - Behavioral
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

entity extend is
  Port (DR: in std_logic_vector (4 downto 0);
        SB: in std_logic_vector (4 downto 0);
        output: out std_logic_vector (31 downto 0) );
end extend;

architecture Behavioral of extend is

    signal the_extend: std_logic_vector(31 downto 0);

begin

    the_extend(4 downto 0) <= SB;
    the_extend(9 downto 5) <= DR;
    the_extend(31 downto 10) <= "0000000000000000000000" when DR(4) = '0' else "1111111111111111111111";
    
    output <= the_extend;

end Behavioral;
