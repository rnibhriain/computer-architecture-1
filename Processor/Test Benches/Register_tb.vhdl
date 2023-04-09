----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2020 21:33:30
-- Design Name: 
-- Module Name: reg32_tb - Behavioral
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

entity reg32_tb is
end reg32_tb;

architecture Behavioral of reg32_tb is

COMPONENT reg32
    PORT(
        D : IN std_logic_vector(31 downto 0);
        load : IN std_logic;
        Clk : IN std_logic;
        Q : OUT std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    signal D : std_logic_vector(31 downto 0):= (others => '0');
    signal load, Clk : std_logic;
    signal Q : std_logic_vector(31 downto 0):= (others => '0');
    
    
begin

    uut: reg32 PORT MAP (
        D => D,
        load => load,
        Clk => Clk,
        Q => Q
    );
    
    stim_proc: process
    begin	
    wait for 10ns;
        load <= '0';
        Clk <= '0';
        D <= "00000001000101111010010000110001"; -- Student Number: 18326577
    wait for 10ns;
        load <= '1';
        Clk <= '1';
    
    end process;

end Behavioral;
