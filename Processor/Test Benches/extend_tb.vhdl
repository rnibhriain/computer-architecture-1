----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 14:11:10
-- Design Name: 
-- Module Name: extend_tb - Behavioral
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

entity extend_tb is
end extend_tb;

architecture Behavioral of extend_tb is

    component extend
        Port (DR: in std_logic_vector (4 downto 0);
              SB: in std_logic_vector (4 downto 0);
              output: out std_logic_vector (31 downto 0) );
    end component;
    
    signal DR, SB: std_logic_vector (4 downto 0);
    signal output: std_logic_vector (31 downto 0);

begin

    uut: extend 
    Port map (
        DR => DR,
        SB => SB,
        output => output
    );

    stim_process: process
     begin
     
     DR <= "00010";
     SB <= "00010";
     wait for 10 ns;
     
     DR <= "11111";
     SB <= "11111";
     wait for 10 ns;
     
     wait;
    end process;

end Behavioral;
