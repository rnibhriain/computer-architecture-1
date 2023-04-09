----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2020 14:26:35
-- Design Name: 
-- Module Name: Functional_Unit - Behavioral
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

entity Functional_Unit is
  Port (A: in std_logic_vector (31 downto 0);
        B: in std_logic_vector (31 downto 0);
        FS: in std_logic_vector (4 downto 0);
        C: out std_logic;
        V: out std_logic;
        Z: out std_logic;
        N: out std_logic;
        output_z: out std_logic_vector (31 downto 0));
end Functional_Unit;

architecture Behavioral of Functional_Unit is

    component ALU 
        Port (A: in std_logic_vector (31 downto 0);
            B: in std_logic_vector (31 downto 0);
            Cin: in std_logic;
            g_select: in std_logic_vector(3 downto 0);
            C: out std_logic;
            v: out std_logic;
            output_z: out std_logic_vector (31 downto 0));
    end component;
    
    component shifter 
        Port (Il: in std_logic;
            Ir: in std_logic;
            S: in std_logic_vector (1 downto 0);
            input: in std_logic_vector(31 downto 0);
            output: out std_logic_vector(31 downto 0)
        );
    end component;
    
    component mux2_32bit
        Port (In0 : in std_logic_vector(31 downto 0);
            In1 : in std_logic_vector(31 downto 0);
            s : in std_logic;
            Z : out std_logic_vector(31 downto 0)
        );
    end component;
    
    signal shifter_output, ALU_output, the_output: std_logic_vector(31 downto 0);

begin

    the_alu: ALU
        port map(
            A => A,
            B => B,
            Cin => FS(0),
            g_select => FS (3 downto 0),
            C => C,
            v => V,
            output_z => ALU_output
        );
        
    the_shifter: shifter
        port map (
            Il => '0',
            Ir => '0',
            S => FS(3 downto 2),
            input => B,
            output => shifter_output
        );
        
     mux: mux2_32bit
        port map (
            In0 => ALU_output,
            In1 => shifter_output,
            s => FS(4),
            z => the_output
        ); 
     
     output_z <= the_output;   
      N <= the_output(31);
      Z <= not (the_output(0) or the_output(1) or the_output(2) or the_output(3) or the_output(4) or the_output(5) or the_output(6) or the_output(7) or
        the_output(8) or the_output(9) or the_output(10) or the_output(11) or the_output(12) or the_output(13) or the_output(14) or the_output(15) or
        the_output(16) or the_output(17) or the_output(18) or the_output(19) or the_output(20) or the_output(21) or the_output(22) or the_output(23) or
        the_output(24) or the_output(25) or the_output(26) or the_output(27) or the_output(28) or the_output(29) or the_output(30) or the_output(31));
      


end Behavioral;
