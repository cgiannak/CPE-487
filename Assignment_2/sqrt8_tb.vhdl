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
  
  process begin
    
    x <= 'X';
    y <= 'X';
    b <= 'X';
    u <= 'X';
    wait for 1 ns;
    
    x <= '0';
    y <= '0';
    b <= '0';
    u <= '0';
    wait for 1 ns;
      
    x <= '1';
    y <= '0';
    b <= '0';
    u <= '0';
    wait for 1 ns;
      
    x <= '0';
    y <= '1';
    b <= '0';
    u <= '0';
    wait for 1 ns;    
      
    x <= '0';
    y <= '0';
    b <= '1';
    u <= '0';
    wait for 1 ns;
    
    x <= '0';
    y <= '0';
    b <= '0';
    u <= '1';
    wait for 1 ns;
      
    x <= '1';
    y <= '1';
    b <= '0';
    u <= '0';
    wait for 1 ns;
      
    x <= '1';
    y <= '0';
    b <= '1';
    u <= '0';
    wait for 1 ns;      
      
    x <= '1';
    y <= '0';
    b <= '0';
    u <= '1';
    wait for 1 ns;
      
    x <= '0';
    y <= '1';
    b <= '1';
    u <= '0';
    wait for 1 ns;
      
    x <= '0';
    y <= '1';
    b <= '0';
    u <= '1';
    wait for 1 ns;    
      
    x <= '0';
    y <= '0';
    b <= '1';
    u <= '1';
    wait for 1 ns;
    
    x <= '1';
    y <= '1';
    b <= '1';
    u <= '0';
    wait for 1 ns;
      
    x <= '1';
    y <= '1';
    b <= '0';
    u <= '1';
    wait for 1 ns;
      
    x <= '1';
    y <= '0';
    b <= '1';
    u <= '1';
    wait for 1 ns;     
      
    x <= '0';
    y <= '1';
    b <= '1';
    u <= '1';
    wait for 1 ns;
      
    x <= '1';
    y <= '1';
    b <= '1';
    u <= '1';
    wait for 1 ns;         
      
    assert false report "Reached end of test";
    wait;
  end process;
    
end test;
