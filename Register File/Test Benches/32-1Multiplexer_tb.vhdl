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
 
ENTITY multiplexer_tb IS
END multiplexer_tb;
 
ARCHITECTURE behavior OF multiplexer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux32bit32
    PORT(
         In0 : IN std_logic_vector(31 downto 0);
        In1 : IN std_logic_vector(31 downto 0);
        In2 : IN std_logic_vector(31 downto 0);
        In3 : IN std_logic_vector(31 downto 0);
        In4 : IN std_logic_vector(31 downto 0);
        In5 : IN std_logic_vector(31 downto 0);
        In6 : IN std_logic_vector(31 downto 0);
        In7 : IN std_logic_vector(31 downto 0);
        In8 : IN std_logic_vector(31 downto 0);
        In9 : IN std_logic_vector(31 downto 0);
        In10 : IN std_logic_vector(31 downto 0);
        In11 : IN std_logic_vector(31 downto 0);
        In12 : IN std_logic_vector(31 downto 0);
        In13 : IN std_logic_vector(31 downto 0);
        In14 : IN std_logic_vector(31 downto 0);
        In15 : IN std_logic_vector(31 downto 0);
        In16 : IN std_logic_vector(31 downto 0);
        In17 : IN std_logic_vector(31 downto 0);
        In18 : IN std_logic_vector(31 downto 0);
        In19 : IN std_logic_vector(31 downto 0);
        In20 : IN std_logic_vector(31 downto 0);
        In21 : IN std_logic_vector(31 downto 0);
        In22 : IN std_logic_vector(31 downto 0);
        In23 : IN std_logic_vector(31 downto 0);
        In24 : IN std_logic_vector(31 downto 0);
        In25 : IN std_logic_vector(31 downto 0);
        In26 : IN std_logic_vector(31 downto 0);
        In27 : IN std_logic_vector(31 downto 0);
        In28 : IN std_logic_vector(31 downto 0);
        In29 : IN std_logic_vector(31 downto 0);
        In30 : IN std_logic_vector(31 downto 0);
        In31 : IN std_logic_vector(31 downto 0);
        s : IN std_logic_vector (4 downto 0);
        Z : OUT std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic_vector(4 downto 0) := (others => '0');
   signal in0 : std_logic_vector(31 downto 0) := (others => '0');
   signal in1 : std_logic_vector(31 downto 0) := (others => '0');
   signal in2 : std_logic_vector(31 downto 0) := (others => '0');
   signal in3 : std_logic_vector(31 downto 0) := (others => '0');
   signal in4 : std_logic_vector(31 downto 0) := (others => '0');
   signal in5 : std_logic_vector(31 downto 0) := (others => '0');
   signal in6 : std_logic_vector(31 downto 0) := (others => '0');
   signal in7 : std_logic_vector(31 downto 0) := (others => '0');
   signal in8 : std_logic_vector(31 downto 0) := (others => '0');
   signal in9 : std_logic_vector(31 downto 0) := (others => '0');
   signal in10 : std_logic_vector(31 downto 0) := (others => '0');
   signal in11 : std_logic_vector(31 downto 0) := (others => '0');
   signal in12 : std_logic_vector(31 downto 0) := (others => '0');
   signal in13 : std_logic_vector(31 downto 0) := (others => '0');
   signal in14 : std_logic_vector(31 downto 0) := (others => '0');
   signal in15 : std_logic_vector(31 downto 0) := (others => '0');
   signal in16 : std_logic_vector(31 downto 0) := (others => '0');
   signal in17 : std_logic_vector(31 downto 0) := (others => '0');
   signal in18 : std_logic_vector(31 downto 0) := (others => '0');
   signal in19 : std_logic_vector(31 downto 0) := (others => '0');
   signal in20 : std_logic_vector(31 downto 0) := (others => '0');
   signal in21 : std_logic_vector(31 downto 0) := (others => '0');
   signal in22 : std_logic_vector(31 downto 0) := (others => '0');
   signal in23 : std_logic_vector(31 downto 0) := (others => '0');
   signal in24 : std_logic_vector(31 downto 0) := (others => '0');
   signal in25 : std_logic_vector(31 downto 0) := (others => '0');
   signal in26 : std_logic_vector(31 downto 0) := (others => '0');
   signal in27 : std_logic_vector(31 downto 0) := (others => '0');
   signal in28 : std_logic_vector(31 downto 0) := (others => '0');
   signal in29 : std_logic_vector(31 downto 0) := (others => '0');
   signal in30 : std_logic_vector(31 downto 0) := (others => '0');
   signal in31 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux32bit32 PORT MAP (
          s => s,
          in0 => in0,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          in5 => in5,
          in6 => in6,
          in7 => in7,
          in8 => in8,
          in9 => in9,
          in10 => in10,
          in11 => in11,
          in12 => in12,
          in13 => in13,
          in14 => in14,
          in15 => in15,
          in16 => in16,
          in17 => in17,
          in18 => in18,
          in19 => in9,
          in20 => in20,
          in21 => in21,
          in22 => in22,
          in23 => in23,
          in24 => in24,
          in25 => in25,
          in26 => in26,
          in27 => in27,
          in28 => in28,
          in29 => in29,
          in30 => in30,
          in31 => in31,
          z => z
        );

   stim_proc: process
   begin		
        in0 <= "00000001000101111010010000110001"; -- Student Number: 18326577
        in1 <= "00000001000101111010010000110000";
		in2 <= "00000001000101111010010000101111";
		in3 <= "00000001000101111010010000101110";
		in4 <= "00000001000101111010010000101101";
		in5 <= "00000001000101111010010000101100";
		in6 <= "00000001000101111010010000101011";
		in7 <= "00000001000101111010010000101010";
		in8 <= "00000001000101111010010000101001";
		in9 <= "00000001000101111010010000101000";
		in10 <= "00000001000101111010010000100111";
		in11 <= "00000001000101111010010000100110";
		in12 <= "00000001000101111010010000100101";
		in13 <= "00000001000101111010010000100100";
		in14 <= "00000001000101111010010000100011";
		in15 <= "00000001000101111010010000100010";
		in16 <= "00000001000101111010010000100001";
		in17 <= "00000001000101111010010000100000";
		in18 <= "00000001000101111010010000011111";
		in19 <= "00000001000101111010010000011110";
		in20 <= "00000001000101111010010000011101";
		in21 <= "00000001000101111010010000011100";
		in22 <= "00000001000101111010010000011011";
		in23 <= "00000001000101111010010000011010";
		in24 <= "00000001000101111010010000011001";
		in25 <= "00000001000101111010010000011000";
		in26 <= "00000001000101111010010000010111";
		in27 <= "00000001000101111010010000010110";
		in28 <= "00000001000101111010010000010101";
		in29 <= "00000001000101111010010000010100";
		in30 <= "00000001000101111010010000010011";
		in31 <= "00000001000101111010010000010010";
      wait for 10 ns;	
      s <= "00000";

      wait for 10 ns;	
		s <= "00001";

      wait for 10 ns;	
		s <= "00010";

      wait for 10 ns;	
		s <= "00011";
		
		wait for 10 ns;	
      s <= "00100";

      wait for 10 ns;	
		s <= "00101";

      wait for 10 ns;	
		s <= "00110";

      wait for 10 ns;	
		s <= "00111";
		wait for 10 ns;	
      s <= "01000";

      wait for 10 ns;	
		s <= "01001";

      wait for 10 ns;	
		s <= "01010";

      wait for 10 ns;	
		s <= "01011";
		
		wait for 10 ns;	
      s <= "01100";

      wait for 10 ns;	
		s <= "01101";

      wait for 10 ns;	
		s <= "01110";

      wait for 10 ns;	
		s <= "01111";
        wait for 10 ns;	
      s <= "10000";

      wait for 10 ns;	
		s <= "10001";

      wait for 10 ns;	
		s <= "10010";

      wait for 10 ns;	
		s <= "10011";
		
		wait for 10 ns;	
      s <= "10100";

      wait for 10 ns;	
		s <= "10101";

      wait for 10 ns;	
		s <= "10110";

      wait for 10 ns;	
		s <= "10111";
		wait for 10 ns;	
      s <= "11000";

      wait for 10 ns;	
		s <= "11001";

      wait for 10 ns;	
		s <= "11010";

      wait for 10 ns;	
		s <= "11011";
		
		wait for 10 ns;	
      s <= "11100";

      wait for 10 ns;	
		s <= "11101";

      wait for 10 ns;	
		s <= "11110";

      wait for 10 ns;	
		s <= "11111";
 --     wait;
   end process;

END;
