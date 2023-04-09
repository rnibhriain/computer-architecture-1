----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2020 14:23:45
-- Design Name: 
-- Module Name: shifter - shifter_structure
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

entity shifter is
  Port (Il: in std_logic;
        Ir: in std_logic;
        S: in std_logic_vector (1 downto 0);
        input: in std_logic_vector(31 downto 0);
        output: out std_logic_vector(31 downto 0)
        );
end shifter;

architecture shifter_structure of shifter is
    component mux_3to1
        Port (In1: in std_logic;
              In2: in std_logic;
              In3: in std_logic;
              s: in std_logic_vector(1 downto 0);
              Z: out std_logic);
    end component;

begin

    Bit00: mux_3to1 port map (
        In1 => input(0),
        In2 => input(1),
        In3 => Il,
        s => S,
        Z => output(0)
    );
    
    Bit01: mux_3to1 port map (
        In1 => input(1),
        In2 => input(2),
        In3 => input(0),
        s => S,
        Z => output(1)
    );
    
    Bit02: mux_3to1 port map (
        In1 => input(2),
        In2 => input(3),
        In3 => input(1),
        s => S,
        Z => output(2)
    );
    
    Bit03: mux_3to1 port map (
        In1 => input(3),
        In2 => input(4),
        In3 => input(2),
        s => S,
        Z => output(3)
    );
    
    Bit04: mux_3to1 port map (
        In1 => input(4),
        In2 => input(5),
        In3 => input(3),
        s => S,
        Z => output(4)
    );
    
    Bit05: mux_3to1 port map (
        In1 => input(5),
        In2 => input(6),
        In3 => input(4),
        s => S,
        Z => output(5)
    );
    
    Bit06: mux_3to1 port map (
        In1 => input(6),
        In2 => input(7),
        In3 => input(5),
        s => S,
        Z => output(6)
    );
    
    Bit07: mux_3to1 port map (
        In1 => input(7),
        In2 => input(8),
        In3 => input(6),
        s => S,
        Z => output(7)
    );
    
    Bit08: mux_3to1 port map (
        In1 => input(8),
        In2 => input(9),
        In3 => input(7),
        s => S,
        Z => output(8)
    );
    
    Bit09: mux_3to1 port map (
        In1 => input(9),
        In2 => input(10),
        In3 => input(8),
        s => S,
        Z => output(9)
    );
    
    Bit10: mux_3to1 port map (
        In1 => input(10),
        In2 => input(11),
        In3 => input(9),
        s => S,
        Z => output(10)
    );
    
    Bit11: mux_3to1 port map (
        In1 => input(11),
        In2 => input(12),
        In3 => input(10),
        s => S,
        Z => output(11)
    );
    
    Bit12: mux_3to1 port map (
        In1 => input(12),
        In2 => input(13),
        In3 => input(11),
        s => S,
        Z => output(12)
    );
    
    Bit13: mux_3to1 port map (
        In1 => input(13),
        In2 => input(14),
        In3 => input(12),
        s => S,
        Z => output(13)
    );
    
    Bit14: mux_3to1 port map (
        In1 => input(14),
        In2 => input(15),
        In3 => input(13),
        s => S,
        Z => output(14)
    );
    
    Bit15: mux_3to1 port map (
        In1 => input(15),
        In2 => input(16),
        In3 => input(14),
        s => S,
        Z => output(15)
    );
    
    Bit16: mux_3to1 port map (
        In1 => input(16),
        In2 => input(17),
        In3 => input(15),
        s => S,
        Z => output(16)
    );
    
    Bit17: mux_3to1 port map (
        In1 => input(17),
        In2 => input(18),
        In3 => input(16),
        s => S,
        Z => output(17)
    );
    
    Bit18: mux_3to1 port map (
        In1 => input(18),
        In2 => input(19),
        In3 => input(17),
        s => S,
        Z => output(18)
    );
    
    Bit19: mux_3to1 port map (
        In1 => input(19),
        In2 => input(20),
        In3 => input(18),
        s => S,
        Z => output(19)
    );
    
    Bit20: mux_3to1 port map (
        In1 => input(20),
        In2 => input(21),
        In3 => input(19),
        s => S,
        Z => output(20)
    );
    
    Bit21: mux_3to1 port map (
        In1 => input(21),
        In2 => input(22),
        In3 => input(20),
        s => S,
        Z => output(21)
    );
    
    Bit22: mux_3to1 port map (
        In1 => input(22),
        In2 => input(23),
        In3 => input(21),
        s => S,
        Z => output(22)
    );
    
    Bit23: mux_3to1 port map (
        In1 => input(23),
        In2 => input(24),
        In3 => input(22),
        s => S,
        Z => output(23)
    );
    
    Bit24: mux_3to1 port map (
        In1 => input(24),
        In2 => input(25),
        In3 => input(23),
        s => S,
        Z => output(24)
    );
    
    Bit25: mux_3to1 port map (
        In1 => input(25),
        In2 => input(26),
        In3 => input(24),
        s => S,
        Z => output(25)
    );
    
    Bit26: mux_3to1 port map (
        In1 => input(26),
        In2 => input(27),
        In3 => input(25),
        s => S,
        Z => output(26)
    );
    
    Bit27: mux_3to1 port map (
        In1 => input(27),
        In2 => input(28),
        In3 => input(26),
        s => S,
        Z => output(27)
    );
    
    Bit28: mux_3to1 port map (
        In1 => input(28),
        In2 => input(29),
        In3 => input(27),
        s => S,
        Z => output(28)
    );
    
    Bit29: mux_3to1 port map (
        In1 => input(29),
        In2 => input(30),
        In3 => input(28),
        s => S,
        Z => output(29)
    );
    
    Bit30: mux_3to1 port map (
        In1 => input(30),
        In2 => input(31),
        In3 => input(29),
        s => S,
        Z => output(30)
    );
    
    Bit31: mux_3to1 port map (
        In1 => input(31),
        In2 => Ir,
        In3 => input(30),
        s => S,
        Z => output(31)
    );


end shifter_structure;
