"--ex2"
1)
entity mux is port (
w,c ,z: in std_logic ; 
s= : out std_logic );
is mux;
architecture arch1 of mux is 
begin 
process(w,c,z)
begin
case c is 
when '0' => s<=z;
when '1' => s<= w;
end case;
end process;
end arch1;
"-2/-"  
entity circuit is port (
w,load,y: in std_logic ; 
z= : out std_logic );
is circuit;
architecture arch2 of mux is 
begin 
z<= (x and load ) or (not(load) and y ) ;
end arch2;
"--3)"
entity fig3 is port (
xx,loadload,yy,ww,cc: in std_logic ; 
s: out std_logic );
end fig3; 
architecture arch3 of fig3 is
begin
signal z : out std_logic ;
component circuit(
w,load,y: in std_logic ; 
z= : out std_logic );
end component;
img_1 : port map circuit(xx,loadload,yy,z);
component mux (
w,c ,z: in std_logic ; 
s= : out std_logic );
end component
img_2 : port map mux(ww,xx,z,ss);
end arch3

"--4)Generic_Code"
entity fig4 is port(
P : in std_logic_vector(2 down to 0 ); /"f cuicuit lowel andi x , houni kol circuit(i) beck yeou P(i)"
Q : out std_logic_vector(2 down to 0); /"f sortie ta kol cuicuit  andi S , houni kol circuit(i) beck yeou Q(i) "
Load : in std_logic; /"jme3a_lkol andhom nafs e Load "
Di :   in std_logic ; /"awel circuit fi blast Y bech y bech ye5ou Di  wbaed di ta li badou hia Q(i-1) "
E : in std_logic ; /"jme3a lkol kifik 
sel : in std_logic /" jme3a lkol kifikf
);
end fig4 ; 
architecture arch4 of fig4 is

component fig3 is port (
xx,loadload,yy,ww,cc: in std_logic ; 
s: out std_logic );
end fig4 ;

begin
/"ps houni fama erreur de syntaxe normalment mais l idee w l'analogie mriglin)"
etiq1 : for i in 0 to 3 generate 
process(i)
begin
if (i=0) then 
etiq2 : fig3 port map (P(i) , Load , Di, E,sel,Q(i) );
else 
etiq2 :  fig3 port map (P(i) , Load , Q(i-1),E,sel,Q(i) );
end if ;
end process;
end arch4 ;















 
