----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.11.2020 15:16:06
-- Design Name: 
-- Module Name: mux_3to1 - Behavioral
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

entity mux_3to1 is
  Port (In1: in std_logic;
        In2: in std_logic;
        In3: in std_logic;
        s: in std_logic_vector (1 downto 0);
        Z: out std_logic );
end mux_3to1;

architecture Behavioral of mux_3to1 is

begin
    with s select
       Z <= In1 when "00",
            In2 when "01",
            In3 when "10",
            In1 when others;


end Behavioral;
