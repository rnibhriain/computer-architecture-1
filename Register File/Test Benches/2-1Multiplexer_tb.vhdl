--------------------------------------------------------------------------------
-- Company: Trinity College
-- Engineer: Dr. Michael Manzke
--
-- Create Date:   11:50:59 02/23/2012
-- Design Name:   
-- Module Name:   C:/Xilinx/12.4/ISE_DS/ISE/ISEexamples/MichaelsMultiplexer/multiplexer_tb.vhd
-- Project Name:  MichaelsMultiplexer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplexer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY multiplexer2_tb IS
END multiplexer2_tb;
 
ARCHITECTURE behavior OF multiplexer2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2_32bit
        PORT(
            In0 : IN std_logic_vector(31 downto 0);
            In1 : IN std_logic_vector(31 downto 0);
            s : IN std_logic;
            Z : OUT std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --inputs
       signal In0 : std_logic_vector(31 downto 0) := (others => '0');
       signal In1 : std_logic_vector(31 downto 0) := (others => '0');
       signal s : std_logic := '0';
 	--Outputs
    signal z : std_logic_vector(31 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2_32bit PORT MAP (
          s => s,
          in0 => in0,
          in1 => in1,
          z => z
        );

   stim_proc: process
   begin		
        in0 <= "00000001000101111010010000110001"; -- Student Number: 18326577
        in1 <= "00000001000101111010010000110000";
        wait for 10 ns;	
            s <= '0';

 --     wait;
   end process;

END;
