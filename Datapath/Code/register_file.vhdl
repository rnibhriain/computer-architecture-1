----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2020 20:18:39
-- Design Name: 
-- Module Name: register_file - Behavioral
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

entity register_file is
    Port ( load: in std_logic;
           dest_address: in std_logic_vector (4 downto 0);
           A_address: in std_logic_vector (4 downto 0);
           B_address: in std_logic_vector (4 downto 0);
           Clk : in std_logic;
           dest_data: in std_logic_vector (31 downto 0);
           A_data: out std_logic_vector (31 downto 0);
           B_data: out std_logic_vector (31 downto 0)
     );
end register_file;

architecture Behavioral of register_file is

    -- components
    
-- 4 bit Register for register file
    COMPONENT reg32
    PORT(
        D : IN std_logic_vector(31 downto 0);
        load : IN std_logic;
        Clk : IN std_logic;
        Q : OUT std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
        -- 5 to 32 Decoder
    COMPONENT decoder
    PORT(
        A0 : IN std_logic;
        A1 : IN std_logic;
        A2 : IN std_logic;
        A3 : IN std_logic;
        A4 : IN std_logic;
        Q0 : OUT std_logic;
        Q1 : OUT std_logic;
        Q2 : OUT std_logic;
        Q3 : OUT std_logic;
        Q4 : OUT std_logic;
        Q5 : OUT std_logic;
        Q6 : OUT std_logic;
        Q7 : OUT std_logic;
        Q8 : OUT std_logic;
        Q9 : OUT std_logic;
        Q10 : OUT std_logic;
        Q11 : OUT std_logic;
        Q12 : OUT std_logic;
        Q13 : OUT std_logic;
        Q14 : OUT std_logic;
        Q15 : OUT std_logic;
        Q16 : OUT std_logic;
        Q17 : OUT std_logic;
        Q18 : OUT std_logic;
        Q19 : OUT std_logic;
        Q20 : OUT std_logic;
        Q21 : OUT std_logic;
        Q22 : OUT std_logic;
        Q23 : OUT std_logic;
        Q24 : OUT std_logic;
        Q25 : OUT std_logic;
        Q26 : OUT std_logic;
        Q27 : OUT std_logic;
        Q28 : OUT std_logic;
        Q29 : OUT std_logic;
        Q30 : OUT std_logic;
        Q31 : OUT std_logic
    );
    END COMPONENT;
    
    -- 32 to 1 line multiplexer
    COMPONENT mux32bit32
    PORT(
        In0 : IN std_logic_vector(31 downto 0);
        In1 : IN std_logic_vector(31 downto 0);
        In2 : IN std_logic_vector(31 downto 0);
        In3 : IN std_logic_vector(31 downto 0);
        In4 : IN std_logic_vector(31 downto 0);
        In5 : IN std_logic_vector(31 downto 0);
        In6 : IN std_logic_vector(31 downto 0);
        In7 : IN std_logic_vector(31 downto 0);
        In8 : IN std_logic_vector(31 downto 0);
        In9 : IN std_logic_vector(31 downto 0);
        In10 : IN std_logic_vector(31 downto 0);
        In11 : IN std_logic_vector(31 downto 0);
        In12 : IN std_logic_vector(31 downto 0);
        In13 : IN std_logic_vector(31 downto 0);
        In14 : IN std_logic_vector(31 downto 0);
        In15 : IN std_logic_vector(31 downto 0);
        In16 : IN std_logic_vector(31 downto 0);
        In17 : IN std_logic_vector(31 downto 0);
        In18 : IN std_logic_vector(31 downto 0);
        In19 : IN std_logic_vector(31 downto 0);
        In20 : IN std_logic_vector(31 downto 0);
        In21 : IN std_logic_vector(31 downto 0);
        In22 : IN std_logic_vector(31 downto 0);
        In23 : IN std_logic_vector(31 downto 0);
        In24 : IN std_logic_vector(31 downto 0);
        In25 : IN std_logic_vector(31 downto 0);
        In26 : IN std_logic_vector(31 downto 0);
        In27 : IN std_logic_vector(31 downto 0);
        In28 : IN std_logic_vector(31 downto 0);
        In29 : IN std_logic_vector(31 downto 0);
        In30 : IN std_logic_vector(31 downto 0);
        In31 : IN std_logic_vector(31 downto 0);
        S : IN std_logic_vector(4 downto 0);
        Z : OUT std_logic_vector(31 downto 0)
    );
    END COMPONENT;
    
    -- signals
    signal load_reg0, load_reg1, load_reg2, load_reg3, load_reg4, load_reg5, load_reg6, load_reg7,
    load_reg8, load_reg9, load_reg10, load_reg11, load_reg12, load_reg13, load_reg14, load_reg15,
    load_reg16, load_reg17, load_reg18, load_reg19, load_reg20, load_reg21, load_reg22, load_reg23,
    load_reg24, load_reg25, load_reg26, load_reg27,load_reg28, load_reg29, load_reg30, load_reg31 : std_logic;
    signal reg0_q, reg1_q, reg2_q, reg3_q, reg4_q, reg5_q, reg6_q, reg7_q,
    reg8_q, reg9_q, reg10_q, reg11_q, reg12_q, reg13_q, reg14_q, reg15_q, 
    reg16_q, reg17_q, reg18_q, reg19_q, reg20_q, reg21_q, reg22_q, reg23_q, 
    reg24_q, reg25_q, reg26_q, reg27_q, reg28_q, reg29_q, reg30_q, reg31_q, data_src_mux_out, src_reg : std_logic_vector(31 downto 0);
    signal data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, 
    data16, data17, data18, data19, data20, data21, data22, data23, data24, data25, data26, data27, data28, data29, data30, data31: std_logic;
            
            
begin
    -- port maps ;-)
    
    -- register 0
    reg00: reg32 PORT MAP(
        D => dest_data,
        load => load_reg0,
        Clk => Clk,
        Q => reg0_q
    );
    
    -- register 1
    reg01: reg32 PORT MAP(
        D => dest_data,
        load => load_reg1,
        Clk => Clk,
        Q => reg1_q
    );
    
    -- register 2
    reg02: reg32 PORT MAP(
        D => dest_data,
        load => load_reg2,
        Clk => Clk,
        Q => reg2_q
    );
    
    -- register 3
    reg03: reg32 PORT MAP(
        D => dest_data,
        load => load_reg3,
        Clk => Clk,
        Q => reg3_q
    );

    -- register 4
    reg04: reg32 PORT MAP(
        D => dest_data,
        load => load_reg4,
        Clk => Clk,
        Q => reg4_q
    );
    
    -- register 5
    reg05: reg32 PORT MAP(
        D => dest_data,
        load => load_reg5,
        Clk => Clk,
        Q => reg5_q
    );
    
    -- register 6
    reg06: reg32 PORT MAP(
        D => dest_data,
        load => load_reg6,
        Clk => Clk,
        Q => reg6_q
    );
    
    -- register 7
    reg07: reg32 PORT MAP(
        D => dest_data,
        load => load_reg7,
        Clk => Clk,
        Q => reg7_q
    );
    
    -- register 8
    reg08: reg32 PORT MAP(
        D => dest_data,
        load => load_reg8,
        Clk => Clk,
        Q => reg8_q
    );
    
    -- register 9
    reg09: reg32 PORT MAP(
        D => dest_data,
        load => load_reg9,
        Clk => Clk,
        Q => reg9_q
    );
    
    -- register 10
    reg010: reg32 PORT MAP(
        D => dest_data,
        load => load_reg10,
        Clk => Clk,
        Q => reg10_q
    );
    
    -- register 11
    reg011: reg32 PORT MAP(
        D => dest_data,
        load => load_reg11,
        Clk => Clk,
        Q => reg11_q
    );

    -- register 12
    reg012: reg32 PORT MAP(
        D => dest_data,
        load => load_reg12,
        Clk => Clk,
        Q => reg12_q
    );
    
    -- register 13
    reg013: reg32 PORT MAP(
        D => dest_data,
        load => load_reg13,
        Clk => Clk,
        Q => reg13_q
    );
    
    -- register 14
    reg014: reg32 PORT MAP(
        D => dest_data,
        load => load_reg14,
        Clk => Clk,
        Q => reg14_q
    );
    
    -- register 15
    reg015: reg32 PORT MAP(
        D => dest_data,
        load => load_reg15,
        Clk => Clk,
        Q => reg15_q
    );
    
    -- register 16
    reg016: reg32 PORT MAP(
        D => dest_data,
        load => load_reg16,
        Clk => Clk,
        Q => reg16_q
    );
    
    -- register 17
    reg017: reg32 PORT MAP(
        D => dest_data,
        load => load_reg17,
        Clk => Clk,
        Q => reg17_q
    );
    
    -- register 18
    reg018: reg32 PORT MAP(
        D => dest_data,
        load => load_reg18,
        Clk => Clk,
        Q => reg18_q
    );
    
    -- register 19
    reg019: reg32 PORT MAP(
        D => dest_data,
        load => load_reg19,
        Clk => Clk,
        Q => reg19_q
    );

    -- register 20
    reg020: reg32 PORT MAP(
        D => dest_data,
        load => load_reg20,
        Clk => Clk,
        Q => reg20_q
    );
    
    -- register 21
    reg021: reg32 PORT MAP(
        D => dest_data,
        load => load_reg21,
        Clk => Clk,
        Q => reg21_q
    );
    
    -- register 22
    reg022: reg32 PORT MAP(
        D => dest_data,
        load => load_reg22,
        Clk => Clk,
        Q => reg22_q
    );
    
    -- register 23
    reg023: reg32 PORT MAP(
        D => dest_data,
        load => load_reg23,
        Clk => Clk,
        Q => reg23_q
    );
    
    -- register 24
    reg024: reg32 PORT MAP(
        D => dest_data,
        load => load_reg24,
        Clk => Clk,
        Q => reg24_q
    );
    
    -- register 25
    reg025: reg32 PORT MAP(
        D => dest_data,
        load => load_reg25,
        Clk => Clk,
        Q => reg25_q
    );
    
    -- register 26
    reg026: reg32 PORT MAP(
        D => dest_data,
        load => load_reg26,
        Clk => Clk,
        Q => reg26_q
    );
    
    -- register 27
    reg027: reg32 PORT MAP(
        D => dest_data,
        load => load_reg27,
        Clk => Clk,
        Q => reg27_q
    );

    -- register 28
    reg028: reg32 PORT MAP(
        D => dest_data,
        load => load_reg28,
        Clk => Clk,
        Q => reg28_q
    );
    
    -- register 29
    reg029: reg32 PORT MAP(
        D => dest_data,
        load => load_reg29,
        Clk => Clk,
        Q => reg29_q
    );
    
    -- register 30
    reg030: reg32 PORT MAP(
        D => dest_data,
        load => load_reg30,
        Clk => Clk,
        Q => reg30_q
    );
    
    -- register 31
    reg031: reg32 PORT MAP(
        D => dest_data,
        load => load_reg31,
        Clk => Clk,
        Q => reg31_q
    );
    
    -- Destination register decoder
    des_decoder_2to32: decoder PORT MAP(
        A0 => dest_address(0),
        A1 => dest_address(1),
        A2 => dest_address(2),
        A3 => dest_address(3),
        A4 => dest_address(4),
        Q0 => data0,
        Q1 => data1,
        Q2 => data2,
        Q3 => data3,
        Q4 => data4,
        Q5 => data5,
        Q6 => data6,
        Q7 => data7,
        Q8 => data8,
        Q9 => data9,
        Q10 => data10,
        Q11 => data11,
        Q12 => data12,
        Q13 => data13,
        Q14 => data14,
        Q15 => data15,
        Q16 => data16,
        Q17 => data17,
        Q18 => data18,
        Q19 => data19,
        Q20 => data20,
        Q21 => data21,
        Q22 => data22,
        Q23 => data23,
        Q24 => data24,
        Q25 => data25,
        Q26 => data26,
        Q27 => data27,
        Q28 => data28,
        Q29 => data29,
        Q30 => data30,
        Q31 => data31
    );
    
    -- 32 to 1 source register multiplexer
    -- ABus 
    Abus: mux32bit32 PORT MAP(
        In0 => reg0_q,
        In1 => reg1_q,
        In2 => reg2_q,
        In3 => reg3_q,
        In4 => reg4_q,
        In5 => reg5_q,
        In6 => reg6_q,
        In7 => reg7_q,
        In8 => reg8_q,
        In9 => reg9_q,
        In10 => reg10_q,
        In11 => reg11_q,
        In12 => reg12_q,
        In13 => reg13_q,
        In14 => reg14_q,
        In15 => reg15_q,
        In16 => reg16_q,
        In17 => reg17_q,
        In18 => reg18_q,
        In19 => reg19_q,
        In20 => reg20_q,
        In21 => reg21_q,
        In22 => reg22_q,
        In23 => reg23_q,
        In24 => reg24_q,
        In25 => reg25_q,
        In26 => reg26_q,
        In27 => reg27_q,
        In28 => reg28_q,
        In29 => reg29_q,
        In30 => reg30_q,
        In31 => reg31_q,
        S => A_address,
        Z => A_data
    );
    
    -- BBus 
    Bbus: mux32bit32 PORT MAP(
        In0 => reg0_q,
        In1 => reg1_q,
        In2 => reg2_q,
        In3 => reg3_q,
        In4 => reg4_q,
        In5 => reg5_q,
        In6 => reg6_q,
        In7 => reg7_q,
        In8 => reg8_q,
        In9 => reg9_q,
        In10 => reg10_q,
        In11 => reg11_q,
        In12 => reg12_q,
        In13 => reg13_q,
        In14 => reg14_q,
        In15 => reg15_q,
        In16 => reg16_q,
        In17 => reg17_q,
        In18 => reg18_q,
        In19 => reg19_q,
        In20 => reg20_q,
        In21 => reg21_q,
        In22 => reg22_q,
        In23 => reg23_q,
        In24 => reg24_q,
        In25 => reg25_q,
        In26 => reg26_q,
        In27 => reg27_q,
        In28 => reg28_q,
        In29 => reg29_q,
        In30 => reg30_q,
        In31 => reg31_q,
        S => B_address,
        Z => B_data
    );
    
    load_reg0 <= data0 and load;
    load_reg1 <= data1 and load;
    load_reg2 <= data2 and load;
    load_reg3 <= data3 and load;
    load_reg4 <= data4 and load;
    load_reg5 <= data5 and load;
    load_reg6 <= data6 and load;
    load_reg7 <= data7 and load;
    load_reg8 <= data8 and load;
    load_reg9 <= data9 and load;
    load_reg10 <= data10 and load;
    load_reg11 <= data11 and load;
    load_reg12 <= data12 and load;
    load_reg13 <= data13 and load;
    load_reg14 <= data14 and load;
    load_reg15 <= data15 and load;
    load_reg16 <= data16 and load;
    load_reg17 <= data17 and load;
    load_reg18 <= data18 and load;
    load_reg19 <= data19 and load;
    load_reg20 <= data20 and load;
    load_reg21 <= data21 and load;
    load_reg22 <= data22 and load;
    load_reg23 <= data23 and load;
    load_reg24 <= data24 and load;
    load_reg25 <= data25 and load;
    load_reg26 <= data26 and load;
    load_reg27 <= data27 and load;
    load_reg28 <= data28 and load;
    load_reg29 <= data29 and load;
    load_reg30 <= data30 and load;
    load_reg31 <= data31 and load;

end Behavioral;
