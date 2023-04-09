----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2020 20:55:24
-- Design Name: 
-- Module Name: datapath - Behavioral
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

entity datapath is
     Port ( 
     
            instruction_address: in std_logic_vector (31 downto 0);
            
            -- data from memory
            memory_data: in std_logic_vector (31 downto 0);
            
            -- addresses
            TA: in std_logic;
            DR: in std_logic_vector (4 downto 0);
            
            TD: in std_logic;
            SA: in std_logic_vector (4 downto 0);
            
            TB: in std_logic;
            SB: in std_logic_vector (4 downto 0);
            
            RW: in std_logic;
            
            -- mux selects
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
         
end datapath;

architecture Behavioral of datapath is

    component register_file
    Port ( load: in std_logic;
           dest_address: in std_logic_vector (5 downto 0);
           A_address: in std_logic_vector (5 downto 0);
           B_address: in std_logic_vector (5 downto 0);
           Clk : in std_logic;
           dest_data: in std_logic_vector (31 downto 0);
           A_data: out std_logic_vector (31 downto 0);
           B_data: out std_logic_vector (31 downto 0)
     );
    end component;
    
    component Functional_Unit
        Port (A: in std_logic_vector (31 downto 0);
            B: in std_logic_vector (31 downto 0);
            FS: in std_logic_vector (4 downto 0);
            C: out std_logic;
            V: out std_logic;
            Z: out std_logic;
            N: out std_logic;
            output_z: out std_logic_vector (31 downto 0));
    end component;
    
    component mux2_32bit
    port ( In0 : in std_logic_vector(31 downto 0);
        In1 : in std_logic_vector(31 downto 0);
        s : in std_logic;
        Z : out std_logic_vector(31 downto 0));
    end component;
    
    component zero_fill
        Port (SB: in std_logic_vector (4 downto 0);
              output: out std_logic_vector (31 downto 0));
    end component;

    signal fill_out, func_uout, const, data, a_data, b_data:  std_logic_vector (31 downto 0);

    signal address_d, address_a, address_b: std_logic_vector (5 downto 0);

    signal bus_d, bus_b, bus_a:  std_logic_vector (31 downto 0);

begin

    regFile: register_file
        port map (
            load => RW,
            dest_address=> address_d,
            A_address => address_a,
            B_address => address_b,
            Clk => Clk,
            dest_data => bus_d,
            A_data => bus_a,
            B_data => b_data
        );
        
    muxB: mux2_32bit
        port map (
            In0 => b_data,
            In1 => fill_out,
            s => MB,
            Z => bus_b
        );
    
    Func_unit: Functional_Unit
        port map (
            A => bus_a, 
            B => bus_b,
            FS => FS,
            V => V,
            C => C,
            Z => Z,
            N => N,
            output_z => func_uout
        );

        
    muxM: mux2_32bit
        port map (
            In0 => bus_a,
            In1 => instruction_address,
            s => MM,
            Z => m_out
        );
        
    muxD: mux2_32bit
        port map (
            In0 => func_uout,
            In1 => memory_data,
            s => MD,
            Z => bus_d
        );
        
    filler: zero_fill
        port map (
            SB => SB,
            output => fill_out
        );
     
     address_d(5) <= TD;
     address_d(4 downto 0) <= DR;
     address_a(5) <= TA;
     address_a(4 downto 0) <= SA;
     address_b(5) <= TB;
     address_b(4 downto 0) <= SB;
     b_out <= bus_b;
     funit_out <= func_uout;
    
end Behavioral;
