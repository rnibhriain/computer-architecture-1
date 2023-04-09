----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2020 19:18:39
-- Design Name: 
-- Module Name: shifter_tb - Behavioral
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

entity shifter_tb is
end shifter_tb;

architecture Behavioral of shifter_tb is

    component shifter 
        Port (Il: in std_logic;
            Ir: in std_logic;
            S: in std_logic_vector (1 downto 0);
            input: in std_logic_vector(31 downto 0);
            output: out std_logic_vector(31 downto 0)
        );
    end component;
    
    signal Il, Ir: std_logic;
    signal S: std_logic_vector (1 downto 0);
    signal input, output: std_logic_vector (31 downto 0);

begin
    uut: shifter 
        port map (
            Il => Il,
            Ir => Ir,
            S => S,
            input => input,
            output => output
        );
        
     stim_process: process
     begin
 
         
     --shift with 1s from the right and the left
 
    -- shift right   
     Il <= '1';
     IR <= '1';
     input <= x"11111111";
     S <= "01";
     wait for 5 ns;
     
    -- don't shift  
     input <= x"11111111";
     S <= "00";
     wait for 5 ns;
     
     -- shift left
     input <= x"F1111111";
     S <= "10";
     wait for 5 ns;
     
     --shift with 0s from the right and the left
 
    -- shift right   
     Il <= '0';
     IR <= '0';
     input <= x"11111111";
     S <= "01";
     wait for 5 ns;
     
    -- don't shift  
     input <= x"11111111";
     S <= "00";
     wait for 5 ns;
     
     -- shift left
     input <= x"F1111111";
     S <= "10";
     wait for 5 ns;
     
     -- shift to check no carry
     
     -- shift right   
     Il <= '0';
     IR <= '0';
     input <= x"00000000";
     S <= "01";
     wait for 5 ns;
     
    -- don't shift  
     input <= x"00000000";
     S <= "00";
     wait for 5 ns;
     
     -- shift left
     input <= x"00000000";
     S <= "10";
     wait for 5 ns;
     
     wait;
     
     end process;


end Behavioral;
