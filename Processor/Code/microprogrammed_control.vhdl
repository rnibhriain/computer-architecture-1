----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2020 22:57:03
-- Design Name: 
-- Module Name: microprogrammed_control - Behavioral
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

entity microprogrammed_control is
  Port (clk, reset: in std_logic;
  
        FL, RZ, RN, RC, RV, MW, MM, RW, MD, MB, TB, TA, TD: out std_logic;
        FS: out std_logic_vector (4 downto 0);
        
        flags: in std_logic_vector (3 downto 0);
        Instruction: in std_logic_vector (31 downto 0);
        
        pc_out: out std_logic_vector (31 downto 0);
        
        DR, SA, SB: out std_logic_vector (4 downto 0));
end microprogrammed_control;

architecture Behavioral of microprogrammed_control is

    component control_memory
        Port (  FL : out std_logic; 
                RZ : out std_logic; 
                RN : out std_logic; 
                RC : out std_logic; 
                RV : out std_logic; 
                MW : out std_logic; 
                MM : out std_logic; 
                RW : out std_logic; 
                MD : out std_logic; 
                FS : out std_logic_vector(4 downto 0); 
                MB : out std_logic; 
                TB : out std_logic; 
                TA : out std_logic; 
                TD : out std_logic; 
                PL : out std_logic; 
                PI : out std_logic; 
                IL : out std_logic; 
                MC : out std_logic; 
                MS : out std_logic_vector(2 downto 0); 
                NA : out std_logic_vector(16 downto 0); 
                IN_CAR : in std_logic_vector(16 downto 0));
    end component;
    
    component mux_8to1
        Port (In0: in std_logic;
              In1: in std_logic;
              In2: in std_logic;
              In3: in std_logic;
              In4: in std_logic;
              In5: in std_logic;
              In6: in std_logic;
              In7: in std_logic;
              sel: in std_logic_vector (2 downto 0);
              output: out std_logic);
    end component;
    
    component mux_2to1_17bit
         Port (In0: in std_logic_vector(16 downto 0);
               In1: in std_logic_vector(16 downto 0);
               sel: in std_logic;
               output: out std_logic_vector(16 downto 0));
    end component;
    
    component IR
        Port (IL: in std_logic;
              clk: in std_logic;
              Instruction: in std_logic_vector (31 downto 0);
              DR: out std_logic_vector (4 downto 0);
              SA: out std_logic_vector (4 downto 0);
              SB: out std_logic_vector (4 downto 0);
              opcode: out std_logic_vector (16 downto 0));
    end component;
    
    component car
        Port (S, clk, reset: in std_logic;
              input: in std_logic_vector (16 downto 0);
              output: out std_logic_vector(16 downto 0) );
    end component;
     
    component pc
        Port (PL, PI, reset, clk: in std_logic;
              input: in std_logic_vector (31 downto 0);
              output: out std_logic_vector (31 downto 0) );
    end component;
    
    component extend
        Port (DR: in std_logic_vector (4 downto 0);
              SB: in std_logic_vector (4 downto 0);
              output: out std_logic_vector (31 downto 0) );
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
    
    signal IL_out, PL_out, PI_out, MC_out, S_out: std_logic;
    signal MS_out: std_logic_vector (2 downto 0);
    signal DR_out, SB_out: std_logic_vector (4 downto 0);
    signal extend_out: std_logic_vector (31 downto 0);
    signal opcode_out, NA_out, C_out, Car_out: std_logic_vector (16 downto 0);
    signal not_flags: std_logic_vector (1 downto 0);

begin
       
    program_counter: pc 
        port map (
            PL => PL_out,
            PI => PI_out,
            reset => reset,
            clk => clk,
            input => extend_out,
            output => pc_out
        );
        
     e_pc: extend
        port map (
            DR => DR_out,
            SB => SB_out,
            output => extend_out
        );
        
   instruction_register: IR
        port map (
            IL => IL_out,
            Instruction => Instruction,
            clk => clk,
            DR => DR_out,
            SA => SA,
            SB => SB_out,
            opcode => opcode_out
        );
        
    muxC: mux_2to1_17bit 
        port map (
            In0 => NA_out,
            In1 => opcode_out,
            sel => S_out,
            output => C_out
        );
        
    control_address_register: car
        port map (
            S => S_out,
            clk => clk,
            reset => reset,
            input => C_out,
            output => car_out
        );
        
    c_memory: control_memory
        port map (
            FL => FL,
            RZ => RZ,
            RN => RN,
            RC => RC,
            RV => RV,
            MW => MW,
            MM => MM,
            RW => RW,
            MD => MD,
            MB => MB,
            TB => TB,
            TA => TA,
            TD => TD,
            FS => FS,
            IL => IL_out,
            PL => PL_out,
            PI => PI_out,
            MC => MC_out,
            MS => MS_out,
            NA => NA_out,
            IN_CAR => car_out
        );
        
   not_flags(0) <= not flags(2);
   not_flags(1) <= not flags(0);
        
    muxS: mux_8to1
        port map (
            In0 => '0',
            In1 => '1',
            In2 => flags(2),
            In3 => flags(3),
            In4 => flags(0),
            In5 => flags(1),
            In6 => not_flags(0),
            In7 => not_flags(1),
            sel => MS_out,
            output => S_out
        );
    
        
     DR <= DR_out;
     SB <= SB_out;


end Behavioral;
