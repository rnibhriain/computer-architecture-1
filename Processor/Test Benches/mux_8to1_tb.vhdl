----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 14:56:26
-- Design Name: 
-- Module Name: mux_8to1_tb - Behavioral
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

entity mux_8to1_tb is
end mux_8to1_tb;

architecture Behavioral of mux_8to1_tb is

    component mux_8to1
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
    end component;
    
    signal In0, In1, In2, In3, In4, In5, In6, In7: std_logic;
    signal sel: std_logic_vector (2 downto 0);
    signal output: std_logic;

begin

    uut: mux_8to1
        Port Map (
            In0 => In0,
            In1 => In1,
            In2 => In2,
            In3 => In3,
            In4 => In4,
            In5 => In5,
            In6 => In6,
            In7 => In7,
            sel => sel,
            output => output
        );
        
   stim_process: process
   begin
   
   In0 <= '0';
   In1 <= '1';
   In2 <= '0';
   In3 <= '1';
   In4 <= '0';
   In5 <= '1';
   In6 <= '1';
   In7 <= '1';
   sel <= "010";
   wait for 10 ns;
   -- answer would be 0
   
   sel <= "111";
   wait for 10 ns;
   -- answer would be 1
     
   wait;
   end process;


end Behavioral;
