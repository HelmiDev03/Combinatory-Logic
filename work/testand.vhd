ARCHITECTURE Test OF TestPorteET IS
COMPONENT PorteET
PORT (
E1 : IN Std_Logic ;
E2 : IN Std_Logic ;
S1 : OUT Std_Logic
) ;
END COMPONENT;
SIGNAL S_E1 : Std_Logic := '0';
SIGNAL S_E2 : Std_Logic := '0';
SIGNAL S_S1 : Std_Logic;
BEGIN
porte : PorteET
PORT MAP(S_E1 ,S_E2 ,S_S1);
ProcessSimulation : PROCESS
BEGIN
S_E1 <= '0';
S_E2 <= '0';
WAIT FOR 10 ns;
S_E1 <= '0';
S_E2 <= '1';
WAIT FOR 10 ns;
S_E1 <= '1';
S_E2 <= '1';
WAIT FOR 10 ns;
S_E1 <= '1';
S_E2 <= '0';
WAIT FOR 10 ns;
S_E1 <= '0';
S_E2 <= '0';
WAIT FOR 10 ns;
WAIT ;
END PROCESS ProcessSimulation ;
END Test;