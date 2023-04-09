----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2020 17:17:51
-- Design Name: 
-- Module Name: Functional_Unit_tb - Behavioral
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

entity Functional_Unit_tb is
end Functional_Unit_tb;

architecture Behavioral of Functional_Unit_tb is

    component Functional_Unit
        Port (A: in std_logic_vector (31 downto 0);
            B: in std_logic_vector (31 downto 0);
            FS: in std_logic_vector (4 downto 0);
            C: out std_logic;
            V: out std_logic;
            Z: out std_logic;
            N: out std_logic;
            output_z: out std_logic_vector (31 downto 0));
     end component;
     
     signal A, B, output_z: std_logic_vector (31 downto 0);
     signal FS: std_logic_vector (4 downto 0);
     signal C, V, N, Z: std_logic;

begin

    uut: Functional_Unit
        port map (
            A => A,
            B => B,
            FS => FS,
            C => C,
            V => V,
            Z => Z,
            N => N,
            output_z => output_z
        );

    stim_process: process
     begin
     
     -- check the ALU 
     
     -- Check the Ripple Adder
     
     -- check the F = A
     A <= x"00000004";
     B <= x"00000004";
     FS <= "00000";
     wait for 5 ns;
     
     -- check the F = A + 1
     A <= x"00000004";
     B <= x"00000004";
     FS <= "00001";
     wait for 5 ns;
     
     -- check the F = A + B
     A <= x"00000004";
     B <= x"00000004";
     FS <= "00010";
     wait for 5 ns;
     
     -- check the F = A + B + 1
     A <= x"00000004";
     B <= x"00000004";
     FS <= "00011";
     wait for 5 ns;
     
     -- check the F = A + ~B
     A <= x"00000004";
     B <= x"00000004";
     FS  <= "00100";
     wait for 5 ns;
     
     -- check the F = A + ~B + 1
     A <= x"00000004";
     B <= x"00000004";
     FS <= "00101";
     wait for 5 ns;
     
     -- check the F = A - 1
     A <= x"00000004";
     B <= x"00000004";
     FS <= "00110";
     wait for 5 ns;
     
     -- check the F = A
     A <= x"00000004";
     B <= x"00000004";
     FS <= "00111";
     wait for 5 ns;
     
     -- Check the ripple adder carry
     
     -- check the F = A + B
     A <= x"FFFFFFFF";
     B <= x"FFFFFFFF";
     FS <= "00010";
     wait for 5 ns;
     
     -- Check the ripple adder Overflow
     
     A <= x"8FFFFFFF";
     B <= x"80000000";
     FS <= "00010";
     wait for 10 ns; 
     
     -- Check the Logic Unit
     
     -- check F = A ^ B
     A <= x"0000000A";
     B <= x"00000006";
     FS <= "01000";
     wait for 5 ns;
     
     -- check F = A V B
     A <= x"0000000A";
     B <= x"00000006";
     FS <= "01010";
     wait for 5 ns;
     
     -- check F = A xor B
     A <= x"0000000A";
     B <= x"00000006";
     FS <= "01100";
     wait for 5 ns;
     
     -- check F = ~A
     A <= x"0000000A";
     B <= x"00000006";
     FS <= "01110";
     wait for 5 ns;
     
     --check the shifter with carry
     
     -- shift right
     B <= x"11111111";
     FS <= "10100";
     wait for 5 ns;
     
    -- don't shift  
     B <= x"11111111";
     FS <= "10000";
     wait for 5 ns;
     
     -- shift left
     B <= x"F1111111";
     FS <= "11000";
     wait for 5 ns;
     
     -- shift to check no carry
     
     -- shift right
     B <= x"00000000";
     FS <= "10100";
     wait for 5 ns;
     
    -- don't shift  
     B <= x"00000000";
     FS <= "10000";
     wait for 5 ns;
     
     -- shift left
     B <= x"00000000";
     FS <= "11000";
     wait for 5 ns;
     
     wait;
    end process;


end Behavioral;
