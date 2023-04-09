----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 14:42:40
-- Design Name: 
-- Module Name: mux_8to1 - Behavioral
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

entity mux_8to1 is
  Port (In0: in std_logic;
        In1: in std_logic;
        In2: in std_logic;
        In3: in std_logic;
        In4: in std_logic;
        In5: in std_logic;
        In6: in std_logic;
        In7: in std_logic;
        sel: in std_logic_vector (2 downto 0);
        output: out std_logic);
end mux_8to1;

architecture Behavioral of mux_8to1 is

begin
    with sel select
       output <= In0 when "000",
                 In1 when "001",
                 In2 when "010",
                 In3 when "011",
                 In4 when "100",
                 In5 when "101",
                 In6 when "110",
                 In7 when "111",
                 '0' when others;

end Behavioral;
