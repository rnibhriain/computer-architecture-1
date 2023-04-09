----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2020 17:59:28
-- Design Name: 
-- Module Name: ripple_adder_tb - Behavioral
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

entity ripple_adder_tb is
end ripple_adder_tb;

architecture Behavioral of ripple_adder_tb is
    component ripple_adder
        port (
            b: in std_logic_vector(31 downto 0);
            a: in std_logic_vector(31 downto 0);
            Cin : in std_logic;
            S: out std_logic_vector(31 downto 0);
            Cout: out std_logic;
            V: out std_logic
        );
    end component;
    
    signal a, b, S: std_logic_vector(31 downto 0);
    signal Cin, Cout, V: std_logic;

begin
    uut: ripple_adder port map (
        a => a,
        b => b,
        Cin => Cin,
        S => S,
        Cout => Cout,
        V => V
    );
    
   stim_proc: process
   begin
   
   -- check the sum
   
   a <= x"00000000";
   b <= x"00000001";
   Cin <= '0';
   wait for 10 ns;
   
   -- check the carry out
   
   a <= x"FFFFFFFF";
   b <= x"00000001";
   Cin <= '0';
   wait for 10 ns;
   
   -- check the carry in
   
   a <= x"AAAAAAA0";
   b <= x"00000000";
   Cin <= '1';
   wait for 10 ns;
   
   a <= x"FFFFFFFE";
   b <= x"00000001";
   Cin <= '1';
   wait for 10 ns;
   
   -- check the overflow
   
   a <= x"8FFFFFFF";
   b <= x"80000000";
   Cin <= '0';
   wait for 10 ns;     
    
   end process;

end Behavioral;
