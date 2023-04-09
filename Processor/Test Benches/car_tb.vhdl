----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2020 15:54:52
-- Design Name: 
-- Module Name: car_tb - Behavioral
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

entity car_tb is
end car_tb;

architecture Behavioral of car_tb is

    component car
        Port (S, clk, reset: in std_logic;
        input: in std_logic_vector (16 downto 0);
        output: out std_logic_vector(16 downto 0) );
    end component;
    
    signal S, clk, reset: std_logic;
    signal input, output: std_logic_vector (16 downto 0);
    
    --Clock period
   constant clk_period : time:= 5 ns;

begin

    --Clock Process
    clk_process : process
    begin
        Clk <= '0';
        wait for clk_period/2;
        Clk <= '1';
        wait for clk_period/2;
    
    end process;

    uut: car
    Port Map (
        S => S,
        clk => clk,
        reset => reset,
        input => input,
        output => output
    );
    
    stim_process: process
     begin
     
     reset <= '1';
     wait for 10 ns;
     
     input <= "00000000000000000";
     reset <= '0';
     S <= '1';
     wait for 10 ns;
     
     S <= '0';
     wait for 10 ns;
     
     wait;
    end process;

end Behavioral;
