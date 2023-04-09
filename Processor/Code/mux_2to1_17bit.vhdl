----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 15:17:17
-- Design Name: 
-- Module Name: mux_2to1_17bit - Behavioral
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

entity mux_2to1_17bit is
  Port (In0: in std_logic_vector(16 downto 0);
        In1: in std_logic_vector(16 downto 0);
        sel: in std_logic;
        output: out std_logic_vector(16 downto 0));
end mux_2to1_17bit;

architecture Behavioral of mux_2to1_17bit is

begin

    output <= In0 after 5 ns when sel='0' else
              In1 after 5 ns when sel='1'else
              "00000000000000000" after 5 ns;


end Behavioral;
