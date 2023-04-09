----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2020 22:17:54
-- Design Name: 
-- Module Name: control_memory_tb - Behavioral
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

entity control_memory_tb is
end control_memory_tb;

architecture Behavioral of control_memory_tb is
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
    
    signal FL, RZ, RN, RC, RV, MW, MM, RW, MD, MB, TA, TB, TD, PL, PI, IL, MC: std_logic;
    signal FS: std_logic_vector (4 downto 0);
    signal MS: std_logic_vector ( 2 downto 0);
    signal IN_CAR: std_logic_vector (16 downto 0);

begin
    uut: control_memory
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
            TA => TA, 
            TB => TB, 
            TD => TD, 
            PL => PL, 
            PI => PI, 
            IL => IL, 
            MC => MC,
            FS => FS,
            MS => MS,
            IN_CAR => IN_CAR
        );
        
    stim_process: process
     begin
     
    -- should be
    -- |41 25|2422|21|20|19|18|17|16|15|14|13 9|8|7|6|5|4|3|2|1|0|
        -- | Next Address    | MS | M| I| P| P| T| T| T| M| FS  |M|R|M|M|R|R|R|R|F|
        -- | Next Address    | MS | C| L| I| L| D| A| B| B| FS  |D|W|M|W|V|C|N|Z|L|
        -- 00000000000000000  001   1  1  1  0  0  0  0  1 00000 0 1 1 0 1 1 1 1 1 
    IN_CAR <= "00000000000000000";
    wait for 10 ns;
     
    wait;
    end process;

end Behavioral;
