library IEEE;
use IEEE.std_logic_1164.all;

entity sqrt8_tb is
end sqrt8_tb;
  
architecture test of sqrt8_tb is
  component sqrt8
  port (
         x  : in  std_logic;
         y  : in  std_logic;
         b  : in  std_logic;
         u  : in  std_logic;
         d  : out std_logic;
         bo : out std_logic
       );
  end component
    
  signal x, y, b, u, d, bo : std_ulogic;
begin
  square_root: sqrt8 port map (x => x, y => y, b => b, u => u, d => d, bo => bo);
end test;
