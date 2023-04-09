----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.12.2020 15:15:48
-- Design Name: 
-- Module Name: zero_fill_tb - Behavioral
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

entity zero_fill_tb is
end zero_fill_tb;

architecture Behavioral of zero_fill_tb is

    component zero_fill
        Port (SB: in std_logic_vector (4 downto 0);
        output: out std_logic_vector (31 downto 0));
    end component;
    
    signal output: std_logic_vector (31 downto 0);
    signal SB: std_logic_vector (4 downto 0);

begin
    uut: zero_fill
    Port Map (
        SB => SB,
        output => output
    );
    
    stim_process: process
     begin
     
     SB <= "10101";
     wait for 10ns;
     
     SB <= "00001";
     wait;
     end process;

end Behavioral;
