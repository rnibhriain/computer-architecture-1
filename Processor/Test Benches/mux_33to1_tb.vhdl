----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2020 14:00:21
-- Design Name: 
-- Module Name: mux_33to1_tb - Behavioral
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

entity mux_33to1_tb is
--  Port ( );
end mux_33to1_tb;

architecture Behavioral of mux_33to1_tb is

COMPONENT mux_33to1
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
        In32 : IN std_logic_vector(31 downto 0);
        s : IN std_logic_vector (5 downto 0);
        Z : OUT std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
    --Inputs
   signal s : std_logic_vector(5 downto 0) := (others => '0');
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
   signal in32 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(31 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
   uut: mux_33to1 PORT MAP (
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
          in32 => in32,
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
		in32 <= "00000001000101111010010000010001";
		
		-- load each register one by one
		
	   wait for 10 ns;	
        s <= "000000";

       wait for 10 ns;	
		s <= "000001";

       wait for 10 ns;	
		s <= "000010";

       wait for 10 ns;	
		s <= "000011";
		
	   wait for 10 ns;	
        s <= "000100";

       wait for 10 ns;	
		s <= "000101";

       wait for 10 ns;	
		s <= "000110";

       wait for 10 ns;	
		s <= "000111";
		
	   wait for 10 ns;	
        s <= "001000";

       wait for 10 ns;	
		s <= "001001";

       wait for 10 ns;	
		s <= "001010";

       wait for 10 ns;	
		s <= "001011";
		
	   wait for 10 ns;	
         s <= "001100";

       wait for 10 ns;	
		s <= "001101";

       wait for 10 ns;	
		s <= "001110";

       wait for 10 ns;	
		s <= "001111";
        
       wait for 10 ns;	
        s <= "010000";

       wait for 10 ns;	
		s <= "010001";

       wait for 10 ns;	
		s <= "010010";

       wait for 10 ns;	
		s <= "010011";
		
	   wait for 10 ns;	
        s <= "010100";

       wait for 10 ns;	
		s <= "010101";

       wait for 10 ns;	
		s <= "010110";

       wait for 10 ns;	
		s <= "010111";
		
	   wait for 10 ns;	
        s <= "011000";

       wait for 10 ns;	
		s <= "011001";

       wait for 10 ns;	
		s <= "011010";

       wait for 10 ns;	
		s <= "011011";
		
	   wait for 10 ns;	
        s <= "011100";

       wait for 10 ns;	
		s <= "011101";

       wait for 10 ns;	
		s <= "011110";

       wait for 10 ns;	
		s <= "011111";
		
	   wait for 10 ns;	
		s <= "100000";
   
   wait;
   end process;

end Behavioral;
