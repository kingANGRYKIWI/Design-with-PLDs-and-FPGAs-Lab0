-- tb_comb_function.vhd
library IEEE,STD,WORK;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.STD_LOGIC_ARITH.ALL;
  --use IEEE.STD_LOGIC_SIGNED.ALL;
  use IEEE.STD_LOGIC_UNSIGNED.ALL;
  use IEEE.STD_LOGIC_TEXTIO.ALL;
  use STD.TEXTIO.ALL;
  use IEEE.MATH_REAL.ALL;

entity TB_COMB_FUNC is
  generic (
    WPD: time:= 5 ns   -- set to the worst case propagation delay
  );
end ; 

architecture TB of TB_COMB_FUNC is

  file OUT_FILE: text is out "sim_COMB_FUNC.txt";  -- simulation output file

  component COMB_FUNC
    port(A,B,C: in std_logic;
         F,G: out std_logic);
  end component ;

  signal A,B,C,F,G:std_logic;

begin

  CUT:COMB_FUNC                           -- Circuit Under Test
    port map (A=>A,B=>B,C=>C,F=>F,G=>G);

  test_VECTOR : process
  begin
    -- exhuastive test for truth table function
    -- note: does this test for timing?
    A <= '0'; B <= '0'; C <= '0'; wait for WPD;
    A <= '0'; B <= '0'; C <= '1'; wait for WPD;
    A <= '0'; B <= '1'; C <= '0'; wait for WPD;
    A <= '0'; B <= '1'; C <= '1'; wait for WPD;
    A <= '1'; B <= '0'; C <= '0'; wait for WPD;
    A <= '1'; B <= '0'; C <= '1'; wait for WPD;
    A <= '1'; B <= '1'; C <= '0'; wait for WPD;
    A <= '1'; B <= '1'; C <= '1'; wait for WPD;
    assert (false) report "sim done!  :)" severity FAILURE;
  end process;

end ; 
    
--configuration CFG_TB of TB_COMB_FUNC is
--for TB
--end for;
--end ; 

