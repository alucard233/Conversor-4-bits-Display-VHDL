----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:51 04/24/2015 
-- Design Name: 
-- Module Name:    SUMA1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SUMA1 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           display : out  STD_LOGIC_VECTOR (3 downto 0);
           b : out  STD_LOGIC_VECTOR (6 downto 0));
end SUMA1;

architecture Behavioral of SUMA1 is

begin
process (a) begin
if a="0000" then b<= "0000001" ;
elsif a="0001" then b<= "1001111";
elsif a="0010" then b<= "0010010" ;
elsif a="0011" then b<= "0000110" ;
elsif a="0100" then b<= "1001111" ;
elsif a="0101" then b<= "0010010" ;
elsif a="0110" then b<= "0000110" ;
elsif a="0111" then b<= "1001100" ;
elsif a="1000" then b<= "0010010" ;
elsif a="1001" then b<= "0000110" ;
elsif a="1010" then b<= "1001100" ;
elsif a="1011" then b<= "0100100" ;
elsif a="1100" then b<= "0000110" ;
elsif a="1101" then b<= "1001100" ;
elsif a="1110" then b<= "0100100" ;
elsif a="1111" then b<= "0100000" ;
end if;
end process;
display<="1011";
end Behavioral;

