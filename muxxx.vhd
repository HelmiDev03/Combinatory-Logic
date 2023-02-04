library IEEE;
use IEEE.std_logic_1164.all;

entity ex5 is
port(
a  : in std_logic_vector (3 down 0 ) ;
s   : out std_logic_vector (3 down 0 ) 
  );
end ex5;

architecture rtl of ex5 is
  
begin

  process(a)
     begin
         for i in 0 to 3 loop
                if (i='0') then
                  s(i)<= a(i);
                else
                  s(i)<= a(i) * a(i-1) + not (a(i)) * not (a(-1));
                end   if;
          end loop;
      end process

end rtl;
