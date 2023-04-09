----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2021 00:49:43
-- Design Name: 
-- Module Name: microprogrammed_control_tb - Behavioral
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

entity microprogrammed_control_tb is
end microprogrammed_control_tb;

architecture Behavioral of microprogrammed_control_tb is

    component microprogrammed_control
        Port (clk, reset: in std_logic;
              FL, RZ, RN, RC, RV, MW, MM, RW, MD, MB, TB, TA, TD: out std_logic;
              FS: out std_logic_vector (4 downto 0);
              flags: in std_logic_vector (3 downto 0);
              Instruction: in std_logic_vector (31 downto 0);
              pc_out: out std_logic_vector (31 downto 0);
              DR, SA, SB: out std_logic_vector (4 downto 0));
    end component;
    
    signal clk, reset, MW, MM, RW, MD, MB, TB, TA, TD: std_logic;
    signal FS, DR, SA, SB: std_logic_vector (4 downto 0);
    signal flags: std_logic_vector (3 downto 0);
    signal Instruction, pc_out: std_logic_vector (31 downto 0);

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
    
    uut: microprogrammed_control
        port map (
            clk => clk, 
            reset => reset,
            MW  => MW, 
            MM => MM, 
            RW => RW, 
            MD => MD, 
            MB => MB, 
            TB => TB, 
            TA => TA, 
            TD => TD,
            FS => FS, 
            DR => DR, 
            SA => SA, 
            SB => SB,
            flags => flags,
            Instruction => Instruction,
            pc_out => pc_out
        );
        
     stim_process: process
     begin
     
     
     -- shows the reset is working
     reset <= '1';
     Instruction <= X"00000003";
     flags <= "1111";
     wait for 10 ns;
        
     reset <= '0';
     wait for 10 ns;
     
     Instruction <= X"00000000";
     wait for 10 ns;
     
     Instruction <= X"00018800";
     wait for 10 ns;
     
     wait;
     end process;    

end Behavioral;
