----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: topmodule - Behavioral
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

entity topmodule is
    Port ( SW : in STD_LOGIC_VECTOR (2 downto 0);
           LED : out STD_LOGIC_VECTOR (4 downto 0));
end topmodule;

architecture Behavioral of topmodule is

component COMB_FUNC 
        port(   A,B,C: in std_logic;
                F,G: out std_logic);
end component; 

signal a,b,c,f,g:std_logic;

begin

a<=SW(0);
b<=SW(1);
c<=SW(2);

comp_tb: COMB_FUNC port map (A=>a, B=>b, C=>c, F=>f, G=>g);

LED(0)<=a;
LED(1)<=b;
LED(2)<=c;
LED(3)<=f;
LED(4)<=g;


end Behavioral;

