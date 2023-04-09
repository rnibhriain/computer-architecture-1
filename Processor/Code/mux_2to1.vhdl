----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.10.2020 15:25:27
-- Design Name: 
-- Module Name: secondMultiplexer - Behavioral
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

entity mux2_32bit is
    port ( In0 : in std_logic_vector(31 downto 0);
        In1 : in std_logic_vector(31 downto 0);
        s : in std_logic;
        Z : out std_logic_vector(31 downto 0));
end mux2_32bit;

architecture Behavioral of mux2_32bit is
begin
   Z <= In0 after 5 ns when S='0' else
    In1 after 5 ns when S='1'else
    "00000000000000000000000000000000" after 5 ns;
end Behavioral;
