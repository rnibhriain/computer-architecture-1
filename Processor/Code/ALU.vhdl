----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2020 12:51:36
-- Design Name: 
-- Module Name: ALU - structure_of_ALU
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

entity ALU is
  Port (A: in std_logic_vector (31 downto 0);
        B: in std_logic_vector (31 downto 0);
        Cin: in std_logic;
        g_select: in std_logic_vector(3 downto 0);
        C: out std_logic;
        v: out std_logic;
        output_z: out std_logic_vector (31 downto 0));
end ALU;

architecture structure_of_ALU of ALU is

component cla
        port (
            b: in std_logic_vector(31 downto 0);
            a: in std_logic_vector(31 downto 0);
            Cin : in std_logic;
            S: out std_logic_vector(31 downto 0);
            Cout: out std_logic;
            V: out std_logic
        );
    end component;
    
    component logic_circuit 
        Port (a: in std_logic_vector(31 downto 0);
            b: in std_logic_vector (31 downto 0);
            s: in std_logic_vector (1 downto 0);
            z: out std_logic_vector(31 downto 0)
        );
    end component;
    
    component mux2_32bit
        Port (In0 : in std_logic_vector(31 downto 0);
            In1 : in std_logic_vector(31 downto 0);
            s : in std_logic;
            Z : out std_logic_vector(31 downto 0)
        );
    end component;
    
    signal y, arithmetic_output, logic_output: std_logic_vector (31 downto 0);
    
begin

    adder: cla
        port map (
            a => A,
            b => y,
            Cin => Cin,
            S => arithmetic_output,
            Cout => C,
            V => v
        );
        
    logic_unit: logic_circuit
        port map (
            a => A,
            b => B,
            s => g_select(2 downto 1),
            z => logic_output
        );
        
    mux: mux2_32bit
        port map (
            In0 => arithmetic_output,
            In1 => logic_output,
            s => g_select(3),
            z => output_z
        );
        
        with g_select (3 downto 0) select
                    y <= x"00000000" when "0000",
                    x"00000000" when "0001",
                    not B when "0100",
                    not B when "0101",
                    x"00000000" when "0111",
                    x"FFFFFFFF" when "0110",
                    B when others;    

end structure_of_ALU;
