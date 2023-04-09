----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2021 20:44:15
-- Design Name: 
-- Module Name: processor_tb - Behavioral
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

entity processor_tb is
end processor_tb;

architecture Behavioral of processor_tb is

    component processor
        Port (clk, reset: in std_logic;
              programcounter, instruction: out std_logic_vector (31 downto 0));
    end component;
    
    signal clk, reset: std_logic;
    signal programcounter, instruction: std_logic_vector (31 downto 0);

    --Clock period
    constant clk_period : time:= 10 ns;

begin

    --Clock Process
    clk_process : process
    begin
        Clk <= '0';
        wait for clk_period/2;
        Clk <= '1';
        wait for clk_period/2;
    
    end process;
    
    the_processor: processor
        port map (
            clk => clk,
            reset => reset,
            programcounter => programcounter,
            instruction => instruction
        );
        
stim_process: process
     begin
     
     
     -- shows the reset is working
     reset <= '1';
     wait for 10 ns;
     
     reset <= '0';
     wait for 10 ns;
     
     wait;
     end process;   
     
end Behavioral;
