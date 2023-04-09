----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2020 19:40:28
-- Design Name: 
-- Module Name: logic_circuit_tb - Behavioral
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

entity logic_circuit_tb is
end logic_circuit_tb;

architecture Behavioral of logic_circuit_tb is

    component logic_circuit
        Port (a: in std_logic_vector(31 downto 0);
        b: in std_logic_vector (31 downto 0);
        s: in std_logic_vector (1 downto 0);
        z: out std_logic_vector(31 downto 0) );
    end component;
    
    signal a, b, z: std_logic_vector (31 downto 0);
    signal s: std_logic_vector (1 downto 0);

begin
    uut: logic_circuit
        Port Map( 
            a => a,
            b => b, 
            s => s,
            z => z
        );
        
        
    stim_process: process
     begin
     
     -- check the AND
     a <= x"11111111";
     b <= x"11111111";
     s <= "00";
     wait for 10 ns;
     
     a <= x"00000000";
     wait for 10 ns;
     
     -- check the OR
     a <= x"11111111";
     b <= x"11111111";
     s <= "01";
     wait for 10 ns;
     
     a <= x"00000000";
     wait for 10 ns;
     
     b <= x"00000000";
     wait for 10 ns;
     
     -- check the XOR
     a <= x"11111111";
     b <= x"11111111";
     s <= "10";
     wait for 10 ns;
     
     a <= x"00000000";
     wait for 10 ns;
     
     b <= x"00000000";
     wait for 10 ns;
     
     a <= x"11111111";
     wait for 10 ns;
     
     -- check the NOT
     a <= x"11111111";
     s <= "11";
     wait for 10 ns;
     
     a <= x"00000000";
     wait for 10 ns;
     
     end process;    


end Behavioral;
