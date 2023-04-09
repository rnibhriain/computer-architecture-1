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
     Port ( --address_a: in std_logic_vector(4 downto 0);
--         address_b: in std_logic_vector (4 downto 0);
--         address_dest: in std_logic_vector(4 downto 0);
--         FS: in std_logic_vector (4 downto 0);
--         W: in std_logic;
         
--         Mb: in std_logic;
--         Md: in std_logic;
         data_in, constant_in: in std_logic_vector(31 downto 0);
         Control_Word: in std_logic_vector (22 downto 0);
         Clk: in std_logic;
         data_out, address_out, funit_out: out std_logic_vector (31 downto 0);
         V: out std_logic;
         C: out std_logic;
         N: out std_logic;
         Z: out std_logic);
end datapath;

architecture Behavioral of datapath is

    component register_file
    Port ( load: in std_logic;
           dest_address: in std_logic_vector (4 downto 0);
           A_address: in std_logic_vector (4 downto 0);
           B_address: in std_logic_vector (4 downto 0);
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

    signal func_uout, const, data, a_data, b_data:  std_logic_vector (31 downto 0);

begin

    regFile: register_file
        port map (
            load => control_word(0),
            dest_address => control_word(22 downto 18),
            A_address => control_word(17 downto 13),
            B_address => control_word(12 downto 8),
            Clk => Clk,
            dest_data => data,
            A_data => a_data,
            B_data => b_data
        );
        
    muxMb: mux2_32bit
        port map (
            In0 => b_data,
            In1 => constant_in,
            s => control_word(7),
            Z => const
        );
    
    Func_unit: Functional_Unit
        port map (
            A => a_data, 
            B => const,
            FS => control_word(6 downto 2),
            V => V,
            C => C,
            Z => Z,
            N => N,
            output_z => func_uout
        );

        
    muxMd: mux2_32bit
        port map (
            In0 => func_uout,
            In1 => data_in,
            s => control_word(1),
            Z => data
        );
        
    address_out <= a_data;
    data_out <= const;
    funit_out <= func_uout;
    
end Behavioral;
