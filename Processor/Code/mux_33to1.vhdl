----------------------------------------------------------------------------------
-- Company: Trinity College
-- Engineer: Dr. Michael Manzke
-- 
-- Create Date:    11:42:30 02/23/2012 
-- Design Name: 
-- Module Name:    multiplexer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;


            
entity mux_33to1 is
    Port (
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
        Z : OUT std_logic_vector(31 downto 0));
end mux_33to1;


architecture Behavioral of mux_33to1 is

begin

   process ( s,IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,IN8,IN9,IN10,IN11,IN12,IN13,IN14,IN15,IN16,IN17,IN18,IN19,IN20,IN21,IN22,IN23,IN24,IN25,IN26,IN27,IN28,IN29,IN30,IN31,IN32)
		begin
		case  s is
			when "000000" => z <= in0;
			when "000001" => z <= in1;
			when "000010" => z <= in2;
			when "000011" => z <= in3;
			when "000100" => z <= in4;
			when "000101" => z <= in5;
			when "000110" => z <= in6;
			when "000111" => z <= in7;
			when "001000" => z <= in8;
			when "001001" => z <= in9;
			when "001010" => z <= in10;
			when "001011" => z <= in11;
			when "001100" => z <= in12;
			when "001101" => z <= in13;
			when "001110" => z <= in14;
			when "001111" => z <= in15;
			when "010000" => z <= in16;
			when "010001" => z <= in17;
			when "010010" => z <= in18;
			when "010011" => z <= in19;
			when "010100" => z <= in20;
			when "010101" => z <= in21;
			when "010110" => z <= in22;
			when "010111" => z <= in23;
			when "011000" => z <= in24;
			when "011001" => z <= in25;
			when "011010" => z <= in26;
			when "011011" => z <= in27;
			when "011100" => z <= in28;
			when "011101" => z <= in29;
			when "011110" => z <= in30;
			when "011111" => z <= in31;
			when "100000" => z <= in32;
			when others => z <= in0;
		end case;
	end process;
	
end Behavioral;