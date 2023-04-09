----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 18:20:34
-- Design Name: 
-- Module Name: flag_reset_tb - Behavioral
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

entity flag_reset_tb is
end flag_reset_tb;

architecture Behavioral of flag_reset_tb is

    component flag_reset
        Port (FL: in std_logic;
              V: in std_logic; 
              N: in std_logic; 
              C: in std_logic; 
              Z: in std_logic;
              RV: in std_logic; 
              RN: in std_logic; 
              RC: in std_logic; 
              RZ: in std_logic;
              output: out std_logic_vector (3 downto 0));
    end component;
    
    signal FL, V, N, C, Z, RV, RN, RC, RZ: std_logic;
    signal output: std_logic_vector (3 downto 0);

begin

    uut: flag_reset
    Port Map (
        FL => FL,
        V => V,
        N => N,
        C => C,
        Z => Z, 
        RV => RV,
        RN => RN,
        RC => RC,
        RZ => RZ,
        output => output
    );
        
    stim_process: process
    begin
    
    Z <= '0';
    N <= '1';
    C <= '0';
    V <= '1';
    FL <= '0';
    RZ <= '0';
    RN <= '0';
    RC <= '0';
    RV <= '0';
    wait for 10 ns;
    -- output should be 0
      
    FL <= '1';
    wait for 10 ns;
    -- output should be A : z = 0, N = 1, C = 0, V = 1
    
    RN <= '1';
    wait for 10 ns;
    -- output should be 8 : z = 0, N = 1, C = 0, V = 1
    -- N has been reset
    
    wait;
    end process;

end Behavioral;
