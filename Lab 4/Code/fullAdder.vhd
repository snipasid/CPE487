----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2022 11:01:49 PM
-- Design Name: 
-- Module Name: fullAdder - rtl
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
