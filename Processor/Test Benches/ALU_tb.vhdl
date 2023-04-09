----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2020 21:10:07
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

entity ALU_tb is
end ALU_tb;

architecture Behavioral of ALU_tb is

    component ALU 
        Port (A: in std_logic_vector (31 downto 0);
            B: in std_logic_vector (31 downto 0);
            Cin: in std_logic;
            g_select: in std_logic_vector(3 downto 0);
            C: out std_logic;
            v: out std_logic;
            output_z: out std_logic_vector (31 downto 0));
    end component;
    
    signal A, B, output_z: std_logic_vector (31 downto 0);
    signal Cin, C, V: std_logic;
    signal g_select: std_logic_vector (3 downto 0);

begin
    uut: ALU
        Port Map (
            A => A,
            B => B,
            Cin => Cin,
            g_select => g_select,
            C => C,
            v => v,
            output_z => output_z
        );
        
   stim_process: process
     begin
     
     -- Check the Ripple Adder
     
     -- check the F = A
     A <= x"00000004";
     B <= x"00000004";
     Cin <= '0';
     g_select <= "0000";
     wait for 5 ns;
     
     -- check the F = A + 1
     A <= x"00000004";
     B <= x"00000004";
     Cin <= '1';
     g_select <= "0001";
     wait for 5 ns;
     
     -- check the F = A + B
     A <= x"00000004";
     B <= x"00000004";
     Cin <= '0';
     g_select <= "0010";
     wait for 5 ns;
     
     -- check the F = A + B + 1
     A <= x"00000004";
     B <= x"00000004";
     Cin <= '1';
     g_select <= "0011";
     wait for 5 ns;
     
     -- check the F = A + ~B
     A <= x"00000004";
     B <= x"00000004";
     Cin <= '0';
     g_select <= "0100";
     wait for 5 ns;
     
     -- check the F = A + ~B + 1
     A <= x"00000004";
     B <= x"00000004";
     Cin <= '1';
     g_select <= "0101";
     wait for 5 ns;
     
     -- check the F = A - 1
     A <= x"00000004";
     B <= x"00000004";
     Cin <= '0';
     g_select <= "0110";
     wait for 5 ns;
     
     -- check the F = A
     A <= x"00000004";
     B <= x"00000004";
     Cin <= '1';
     g_select <= "0111";
     wait for 5 ns;
     
     -- Check the Logic Unit
     
     -- check F = A ^ B
     A <= x"0000000A";
     B <= x"00000006";
     Cin <= '0';
     g_select <= "1000";
     wait for 5 ns;
     
     -- check F = A ^ B
     A <= x"0000000A";
     B <= x"00000006";
     Cin <= '0';
     g_select <= "1010";
     wait for 5 ns;
     
     -- check F = A xor B
     A <= x"0000000A";
     B <= x"00000006";
     Cin <= '0';
     g_select <= "1100";
     wait for 5 ns;
     
     -- check F = ~A
     A <= x"0000000A";
     B <= x"00000006";
     Cin <= '0';
     g_select <= "1110";
     wait for 5 ns;
     
     wait;
  end process;

end Behavioral;
