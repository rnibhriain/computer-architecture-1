----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2020 13:22:49
-- Design Name: 
-- Module Name: car - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity car is
  Port (S, clk, reset: in std_logic;
        input: in std_logic_vector (16 downto 0);
        output: out std_logic_vector(16 downto 0) );
end car;

architecture Behavioral of car is
    
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
    
    signal adder_output: std_logic_vector (31 downto 0);
    signal a_in: std_logic_vector (31 downto 0);
    signal a: std_logic_vector (31 downto 0);

begin
   
       adder: cla port map (
        a => a,
        b => x"00000000",
        Cin => '1',
        S => adder_output
        );
   
    process (clk) is
    
    variable current: std_logic_vector (16 downto 0);
    
    begin
        a_in(16 downto 0) <= current;
        a_in(31 downto 17) <= "000000000000000";
        a <= a_in;
        if rising_edge(clk) then
            if reset = '1' then               
                current := "00000000011000000"; -- x"000C0"
            elsif S = '1' then
                current := input;
            elsif S = '0' then
                current := adder_output(16 downto 0);
           end if;
       end if; 
       
    output <= current;
    
    end process;

end Behavioral;
