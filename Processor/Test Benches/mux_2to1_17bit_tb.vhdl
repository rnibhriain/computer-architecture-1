----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 15:26:56
-- Design Name: 
-- Module Name: mux_2to1_17bit_tb - Behavioral
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

entity mux_2to1_17bit_tb is
end mux_2to1_17bit_tb;

architecture Behavioral of mux_2to1_17bit_tb is

    component mux_2to1_17bit
        Port (In0: in std_logic_vector(16 downto 0);
              In1: in std_logic_vector(16 downto 0);
              sel: in std_logic;
              output: out std_logic_vector(16 downto 0));
    end component;
    
    signal In0, In1: std_logic_vector (16 downto 0);
    signal sel: std_logic;
    signal output: std_logic_vector (16 downto 0);

begin

    uut: mux_2to1_17bit
    Port Map (
        In0 => In0,
        In1 => In1,
        sel => sel,
        output => output
    );

    stim_process: process
    begin
    
    In0 <= "00000000000000000";
    In1 <= "11111111111111111";
    sel <= '0';
    wait for 10 ns;
    
    sel <= '1';
    wait for 10 ns;
     
    wait;
    end process;

end Behavioral;
