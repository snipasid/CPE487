library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_fullAdder is 
-- Port();
end tb_fullAdder;

architecture Behavioral of tb_fullAdder is
-- components declaration
    component fullAdder
        port(A,B,Cin : in std_logic;
            S, Cout : out std_logic);
    end component;
-- Input signals
    signal A, B, Cin : std_logic;
-- Output signals
    signal Cout, S : std_logic;
begin
-- Instatiate the UUT
    uut : fullAdder port map(A => A, B => B, Cin => Cin,
                        S => S, Cout => Cout);

-- Stimulus component
    stim_proc : process
    begin
    wait for 100ns;
    
    A <= '0';
    B <= '0';
    Cin <= '0';
    wait for 20ns;
    A <= '0';
    B <= '0';
    Cin <= '1';
    wait for 20ns;
    A <= '0';
    B <= '1';
    Cin <= '0';
    wait for 20ns;
    A <= '0';
    B <= '1';
    Cin <= '1';
    wait for 20ns;
    A <= '1';
    B <= '0';
    Cin <= '0';
    wait for 20ns;
    A <= '1';
    B <= '0';
    Cin <= '1';
    wait for 20ns;
    A <= '1';
    B <= '1';
    Cin <= '0';
    wait for 20ns;
    A <= '1';
    B <= '1';
    Cin <= '1';
    wait for 20ns;
    
    end process;
    
end Behavioral;