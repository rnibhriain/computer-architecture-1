----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2021 17:47:41
-- Design Name: 
-- Module Name: processor - Behavioral
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

entity processor is
  Port (clk, reset: in std_logic;
        programcounter, instruction: out std_logic_vector (31 downto 0));
end processor;

architecture Behavioral of processor is

    component datapath
        Port ( 
            instruction_address: in std_logic_vector (31 downto 0);
            memory_data: in std_logic_vector (31 downto 0);
            TA: in std_logic;
            DR: in std_logic_vector (4 downto 0);
            TD: in std_logic;
            SA: in std_logic_vector (4 downto 0);
            TB: in std_logic;
            SB: in std_logic_vector (4 downto 0);
            RW: in std_logic;
            MD: in std_logic;
            MM: in std_logic;
            MB: in std_logic;
            FS: in std_logic_vector (4 downto 0);
            Clk: in std_logic;
            V: out std_logic;
            C: out std_logic;
            N: out std_logic;
            Z: out std_logic;
            m_out: out std_logic_vector (31 downto 0);
            b_out: out std_logic_vector (31 downto 0);
            funit_out: out std_logic_vector (31 downto 0));
    end component;
    
    component memory
        Port ( address: in std_logic_vector (31 downto 0);
               write_data: in std_logic_vector (31 downto 0);
               clk: in std_logic;
               MW: in std_logic;
               read_data: out std_logic_vector (31 downto 0) );
    end component;
    
    component microprogrammed_control
        Port (clk, reset: in std_logic;
              FL, RZ, RN, RC, RV, MW, MM, RW, MD, MB, TB, TA, TD: out std_logic;
              FS: out std_logic_vector (4 downto 0);
              flags: in std_logic_vector (3 downto 0);
              Instruction: in std_logic_vector (31 downto 0);
              pc_out: out std_logic_vector (31 downto 0);
              DR, SA, SB: out std_logic_vector (4 downto 0));
    end component;
    
    component flag_reset
        Port (FL: in std_logic;
              V: in std_logic; 
              N: in std_logic; 
              C: in std_logic; 
              Z: in std_logic;
              RV: in std_logic; 
              RN: in std_logic; 
              RC: in std_logic; 
              RZ: in std_logic;
              output: out std_logic_vector (3 downto 0));
    end component;
    
    signal flags: std_logic_vector (3 downto 0);
    signal FL, RZ, RN, RC, RV, MW, MM, RW, MD, MB, TB, TA, TD, V, N, C, Z: std_logic;
    signal FS, DR, SA, SB: std_logic_vector (4 downto 0);
    signal pc_out, instruction_out, funit_out, m_out, b_out: std_logic_vector (31 downto 0);
    
begin
    
    f_reset: flag_reset
        port map (
            FL => FL,
            V => V,
            N => N,
            C => C,
            Z => Z,
            RV => RV,
            RN => RN,
            RC => RC,
            RZ => RZ,
            output => flags
        );
        
     m_control: microprogrammed_control
        port map (
            clk => clk, 
            reset => reset, 
            FL => FL, 
            RZ => RZ, 
            RN => RN, 
            RC => RC, 
            RV => RV, 
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
            Instruction => instruction_out,
            pc_out => pc_out
        );
        
     dpath: datapath
        port map (
            instruction_address => pc_out,
            memory_data => instruction_out,
            TA => TA,
            DR => DR,
            TD => TD,
            SA => SA,
            TB => TB,
            SB => SB,
            RW => RW,
            MD => MD,
            MM => MM,
            MB => MB, 
            FS => FS,
            clk => clk,
            V => V,
            C => C,
            N => N,
            Z => Z,
            m_out => m_out,
            b_out => b_out,
            funit_out => funit_out
        );

    memory_M: memory
        port map (
            address => m_out,
            write_data => b_out,
            clk => clk,
            MW => MW,  
            read_data => instruction_out
        );
        
    programcounter <= pc_out;
    instruction <= instruction_out;

end Behavioral;
