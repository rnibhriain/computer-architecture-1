----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2020 16:10:36
-- Design Name: 
-- Module Name: logic_circuit - Behavioral
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

entity logic_circuit is
  Port (a: in std_logic_vector(31 downto 0);
        b: in std_logic_vector (31 downto 0);
        s: in std_logic_vector (1 downto 0);
        z: out std_logic_vector(31 downto 0) );
end logic_circuit;

architecture Behavioral of logic_circuit is

begin
   z <= a and b after 5 ns when s="00" else
    a or b after 5 ns when s="01"else
    a xor b after 5 ns when s="10" else 
    not a;
    

end Behavioral;
