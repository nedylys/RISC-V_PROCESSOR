library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.PKG.all;

entity CPU_CND is
    generic (
        mutant      : integer := 0
    );
    port (
        rs1         : in w32;
        alu_y       : in w32;
        IR          : in w32;
        slt         : out std_logic;
        jcond       : out std_logic
    );
end entity;

architecture RTL of CPU_CND is
    
    signal Ext : std_logic;
    signal rs1_33 : std_logic_vector(32 downto 0);
    signal ALU_Y_33 : std_logic_vector(32 downto 0);
    signal sub:signed(32 downto 0);
    signal s:std_logic;
    signal z:std_logic;
    signal jcond_or_1:std_logic;
    signal jcond_or_2:std_logic;

begin
    Ext <= (IR(12) nor IR(6)) or (IR(6)  and not(IR(13)));
    rs1_33 <= rs1(31)&std_logic_vector(rs1) when Ext='1' else '0'&std_logic_vector(rs1);
    ALU_Y_33 <= ALU_Y(31)&std_logic_vector(ALU_Y) when Ext='1' else '0'&std_logic_vector(ALU_Y);
    sub <= signed(rs1_33) - signed(ALU_Y_33);
    z <= '1' when sub=0 else '0';
    s <= sub(32);
    slt <= s;
    jcond_or_1 <= (IR(12) xor z) and not(IR(14));
    jcond_or_2 <= (s xor IR(12)) and IR(14);
    jcond <= jcond_or_1 or jcond_or_2;
end architecture;
