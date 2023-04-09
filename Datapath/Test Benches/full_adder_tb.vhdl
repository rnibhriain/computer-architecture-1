----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2020 17:31:16
-- Design Name: 
-- Module Name: full_adder_tb - Behavioral
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

entity full_adder_tb is
end full_adder_tb;

architecture Behavioral of full_adder_tb is
    component full_adder
        port(
            x, y, Cin: in std_logic;
            s, Cout: out std_logic
        );
    end component;
    
-- signals
    signal x, y, Cin, s, Cout: std_logic;    
    
    
begin
    uut: full_adder PORT MAP (
        x => x,
        y => y,
        Cin => Cin,
        s => s,
        Cout => Cout
    );
    
    stim_proc: process
    begin
    
    x <= '0';
    y <= '0';
    Cin <= '0';
    wait for 10 ns;
    
    x <= '1';
    y <= '0';
    Cin <= '0';
    wait for 10 ns;
    
    x <= '0';
    y <= '1';
    Cin <= '0';
    wait for 10 ns;
    
    x <= '1';
    y <= '1';
    Cin <= '0';
    wait for 10 ns;
    
    x <= '0';
    y <= '0';
    Cin <= '1';
    wait for 10 ns;
    
    x <= '1';
    y <= '0';
    Cin <= '1';
    wait for 10 ns;
    
    x <= '0';
    y <= '1';
    Cin <= '1';
    wait for 10 ns;
    
    x <= '1';
    y <= '1';
    Cin <= '1';
    wait for 10 ns;
    
    end process;

end Behavioral;
