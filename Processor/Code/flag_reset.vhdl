----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2020 18:08:49
-- Design Name: 
-- Module Name: flag_reset - Behavioral
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

entity flag_reset is
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
end flag_reset;

architecture Behavioral of flag_reset is

    signal temp: std_logic_vector (3 downto 0);

begin

    -- with no reset set as the flag, else reset
    temp(0) <= Z when RZ = '0' else '0';
    temp(1) <= N when RN = '0' else '0';
    temp(2) <= C when RC = '0' else '0';
    temp(3) <= V when RV = '0' else '0';

    output <= "0000" when FL = '0' else temp;

end Behavioral;
