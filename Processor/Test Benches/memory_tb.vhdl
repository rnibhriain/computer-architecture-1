----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2020 20:54:16
-- Design Name: 
-- Module Name: memory_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory_tb is
end memory_tb;

architecture Behavioral of memory_tb is
    
    component memory
        Port ( address: in unsigned(31 downto 0);
               write_data: in std_logic_vector (31 downto 0);
               clk: in std_logic;
               MW: in std_logic;
               read_data: out std_logic_vector (31 downto 0) );
    end component;
    
    signal address: unsigned (31 downto 0);
    signal write_data, read_data: std_logic_vector (31 downto 0);
    signal clk, MW: std_logic;

    --Clock period
    constant clk_period : time:= 10 ns;

begin

    --Clock Process
    clk_process : process
    begin
        Clk <= '0';
        wait for clk_period/2;
        Clk <= '1';
        wait for clk_period/2;
    
    end process;
    
    uut: memory
        port map (
            address => address,
            write_data => write_data,
            clk => clk,
            MW => MW,
            read_data => read_data
        );

     stim_process: process
     begin
     
     -- read some of the initialised values
     -- should be x"00000003"
     address <= x"00000001";
     MW <= '0';
     wait for 10 ns;
     
     -- set some memory to be x"00008000"
     address <= x"00001000";
     MW <= '1';
     write_data <= x"00008000";
     wait for 10 ns;
     
     -- read the set value
     -- should be x"00008000"
     address <= x"00001000";
     MW <= '0';
     wait for 10 ns;       
            
     wait;
     end process;

end Behavioral;
