----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.12.2020 14:07:42
-- Design Name: 
-- Module Name: pc - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pc is
  Port (PL, PI, reset, clk: in std_logic;
        input: in std_logic_vector (31 downto 0);
        output: out std_logic_vector (31 downto 0) );
end pc;

architecture Behavioral of pc is 

    component ripple_adder
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
    signal a: std_logic_vector (31 downto 0);

begin
   
       adder: ripple_adder
        port map (
            a => a,
            b => x"00000000",
            Cin => '1',
            S => adder_output
        );

    
    
    the_reset : process (clk) is
    
    variable current: std_logic_vector (31 downto 0);
    
    begin
        a <= current;
        if rising_edge(clk) then
            if reset = '1' then               -- do reset
                current := x"00000000";
            else                            -- normal operation
                if PI = '1'then
                   current := adder_output;
                elsif PL = '1' then
                    current := current + input;
                end if;
            end if;
        end if;
        
        output <= current;
        
end process the_reset;
    

end Behavioral;
