----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.10.2020 18:17:31
-- Design Name: 
-- Module Name: register - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg32 is
     Port( d : IN STD_LOGIC_VECTOR(31 downto 0); --input
            load : IN STD_LOGIC; --load/enable
            clk : IN STD_LOGIC; -- clock
            q : OUT STD_LOGIC_VECTOR (31 downto 0)
          );
end reg32;

architecture Behavioral of reg32 is

begin
process(clk)
    begin
        if (rising_edge(clk)) then
            if load='1' then
                Q<=D after 5 ns;
            end if;
        end if;
    end process;

end Behavioral;
