----------------------------------------------------------------------
-- Name:            Lab 4
-- Author:          Junseok Oh & Shiddharath Patel
-- Date:            10/06/2022
-- Description:     Lab 4 - fullAdder VHD code for FPGA Board

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end fullAdder;

-- Architecture implementation
architecture rtl of fullAdder is

-- Internal signals declaration
    signal w1 : std_logic;
    signal w2 : std_logic;
    signal w3 : std_logic;

begin
-- Internal signals assignments
    w1 <= A xor B;
    w2 <= w1 and Cin;
    w3 <= A and B;
    
    Cout <= w2 or w3;
    S <= w1 xor Cin;

end rtl;
