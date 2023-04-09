----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2020 21:48:26
-- Design Name: 
-- Module Name: regFile_tb - Behavioral
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

entity regFile_tb is
end regFile_tb;

architecture Behavioral of regFile_tb is


    COMPONENT register_file
    PORT ( src : in std_logic_vector (4 downto 0);
        des_A0 : in std_logic;
        des_A1 : in std_logic;
        des_A2 : in std_logic;
        des_A3 : in std_logic;
        des_A4 : in std_logic;
        Clk : in std_logic;
        data_src : in std_logic;
        data : in std_logic_vector(31 downto 0);
        reg0 : out std_logic_vector(31 downto 0);
        reg1 : out std_logic_vector(31 downto 0);
        reg2 : out std_logic_vector(31 downto 0);
        reg3 : out std_logic_vector(31 downto 0);
        reg4 : out std_logic_vector(31 downto 0);
        reg5 : out std_logic_vector(31 downto 0);
        reg6 : out std_logic_vector(31 downto 0);
        reg7 : out std_logic_vector(31 downto 0);
        reg8 : out std_logic_vector(31 downto 0);
        reg9 : out std_logic_vector(31 downto 0);
        reg10 : out std_logic_vector(31 downto 0);
        reg11 : out std_logic_vector(31 downto 0);
        reg12 : out std_logic_vector(31 downto 0);
        reg13 : out std_logic_vector(31 downto 0);
        reg14 : out std_logic_vector(31 downto 0);
        reg15 : out std_logic_vector(31 downto 0);
        reg16 : out std_logic_vector(31 downto 0);
        reg17 : out std_logic_vector(31 downto 0);
        reg18 : out std_logic_vector(31 downto 0);
        reg19 : out std_logic_vector(31 downto 0);
        reg20 : out std_logic_vector(31 downto 0);
        reg21 : out std_logic_vector(31 downto 0);
        reg22 : out std_logic_vector(31 downto 0);
        reg23 : out std_logic_vector(31 downto 0);
        reg24 : out std_logic_vector(31 downto 0);
        reg25 : out std_logic_vector(31 downto 0);
        reg26 : out std_logic_vector(31 downto 0);
        reg27 : out std_logic_vector(31 downto 0);
        reg28 : out std_logic_vector(31 downto 0);
        reg29 : out std_logic_vector(31 downto 0);
        reg30 : out std_logic_vector(31 downto 0);
        reg31 : out std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    
    signal des_A0, des_A1, des_A2, des_A3, des_A4, Clk, data_src : std_logic;
    signal src : std_logic_vector(4 downto 0) := (others => '0');
    signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15,
        reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28, reg29, 
        reg30, reg31, data : std_logic_vector(31 downto 0) := (others => '0');
        
   --Clock period
   constant clk_period : time:= 10 ns; 
    
BEGIN

    uut: register_file PORT MAP (
        src => src,
        des_A0 => des_A0,
        des_A1 => des_A1,
        des_A2 => des_A2,
        des_A3 => des_A3,
        des_A4 => des_A4,
        Clk => Clk,
        data_src => data_src,
        data => data,
        reg0 => reg0,
        reg1 => reg1,
        reg2 => reg2,
        reg3 => reg3, 
        reg4 => reg4,
        reg5 => reg5, 
        reg6 => reg6, 
        reg7 => reg7, 
        reg8 => reg8, 
        reg9 => reg9, 
        reg10 => reg10, 
        reg11 => reg11, 
        reg12 => reg12, 
        reg13 => reg13, 
        reg14 => reg14, 
        reg15 => reg15,
        reg16 => reg16,
        reg17 => reg17, 
        reg18 => reg18, 
        reg19 => reg19, 
        reg20 => reg20, 
        reg21 => reg21, 
        reg22 => reg22, 
        reg23 => reg23, 
        reg24 => reg24, 
        reg25 => reg25, 
        reg26 => reg26, 
        reg27 => reg27, 
        reg28 => reg28, 
        reg29 => reg29, 
        reg30 => reg30, 
        reg31 => reg31
    );
    
    --Clock Process
    clk_process : process
    begin
        Clk <= '0';
        wait for clk_period/2;
        Clk <= '1';
        wait for clk_period/2;
    
    end process;
    
    stim_proc: process
   begin
   
   --- Part A) Loading the registers
   
   -- 	load register 0 with 18326577
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <= '0';
    des_A3 <= '0';
    des_A4 <= '0';
    data_src <= '0';
    data <= "00000001000101111010010000110001"; -- Student Number: 18326577
   
   
   
   -- load register 1 with 18326576
   wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000110000";
   
   --load register 2 with 18326575
   
   wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000101111";
   

   
   -- load register 3 with 18326574
   
    wait for 10 ns;
    des_A0 <= '1';
    des_A1 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000101110";
   
   -- load register 4 with 18326573
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000101101";
   
    -- load register 5 with 18326572
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000101100";
   
    -- load register 6 with 18326571
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000101011";
   
    -- load register 7 with 18326570
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000101010";
   
    -- load register 8 with 18326569
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <= '0';
    des_A3 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000101001";
   
    -- load register 9 with 18326568
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000101000";
   
    -- load register 10 with 18326567
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000100111";	
   
    -- load register 11 with 18326566
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000100110";	
   
    -- load register 12 with 18326565
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000100101";	
   
    -- load register 13 with 18326564
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000100100";	
   
    -- load register 14 with 18326563
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000100011";	
   
    -- load register 15 with 18326562
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000100010";
   
    -- load register 16 with 18326561
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <= '0';
    des_A3 <= '0';
    des_A4 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000100001";
   
    -- load register 17 with 18326560
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000100000";

    -- load register 18 with 18326559
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000011111";
   
    -- load register 19 with 18326558
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000011110";
   
    -- load register 20 with 18326557
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000011101";
   
    -- load register 21 with 18326556
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000011100";
   
    -- load register 22 with 18326555
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000011011";
   
    -- load register 23 with 18326554
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000011010";
   
    -- load register 24 with 18326553
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <= '0';
    des_A3 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000011001";
   
    -- load register 25 with 18326552
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000011000";
   
    -- load register 26 with 18326551
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000010111";
   
    -- load register 27 with 18326550
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000010110";
   
    -- load register 28 with 18326549
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000010101";
   
    -- load register 29 with 18326548
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000010100";
   
    -- load register 30 with 18326547
   
    wait for 10 ns;
    des_A0 <= '0';
    des_A1 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000010011";
   
    -- load register 31 with 18326546
   
    wait for 10 ns;
    des_A0 <= '1';
    data_src <= '0';
    data <= "00000001000101111010010000010010";
   
   -- Part B) Transferring content across the registers
   
    wait for 10 ns;
    src <= "00001";
    data_src <= '1';
    
    wait for 10 ns;
    src <= "00010";
    des_A0 <= '0';
    des_A1 <= '0';
    des_A2 <= '0';
    des_A3 <= '0';
    des_A4 <= '0';
    data_src <= '1';
    
    wait for 10 ns;
    
    wait;

   end process;


end Behavioral;
