----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2020 19:01:24
-- Design Name: 
-- Module Name: mux_3to1_tb - Behavioral
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

entity mux_3to1_tb is
end mux_3to1_tb;

architecture Behavioral of mux_3to1_tb is
    
    component mux_3to1
        Port (In1: in std_logic;
            In2: in std_logic;
            In3: in std_logic;
            s: in std_logic_vector (1 downto 0);
            Z: out std_logic
        );
    end component;
    
    signal In1, In2, In3, z: std_logic;
    signal s: std_logic_vector(1 downto 0);
    
begin
    
    uut: mux_3to1 Port Map (
        In1 => In1,
        In2 => In2,
        In3 => In3,
        s => s,
        Z => Z
    );
    
   stim_proc: process
   begin
   
   In1 <= '0';
   In2 <= '1';
   In3 <= '1';
   s <= "00";
   wait for 10ns;
   
   s <= "01";
   wait for 10ns;
   
   s <= "10";
   wait for 10ns;
   
   end process;

end Behavioral;
