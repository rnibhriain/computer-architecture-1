----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.12.2020 22:12:11
-- Design Name: 
-- Module Name: pc_tb - Behavioral
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

entity pc_tb is
end pc_tb;

architecture Behavioral of pc_tb is

    component pc
        Port (PL, PI, reset, clk: in std_logic;
              input: in std_logic_vector (31 downto 0);
              output: out std_logic_vector (31 downto 0) );
    end component;
    
    signal PL, PI, reset, clk: std_logic;
    signal input, output: std_logic_vector (31 downto 0);

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

    uut: pc
        port map (
            PL => PL,
            PI => PI,
            reset => reset,
            clk => clk,
            input => input,
            output => output
        );
        
     stim_process: process
     begin
     
     reset <= '1';
     wait for 10 ns;
     
     reset <= '0';
     PI <= '1';
     wait for 10ns;
     
     input <= x"00000006";
     PI <= '0';
     PL <= '1';
     wait for 10 ns;
     
     PL <= '0';
     PI <= '1';
     wait for 10 ns;
     
     wait;
     end process;

end Behavioral;
