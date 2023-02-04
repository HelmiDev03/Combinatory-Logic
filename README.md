# Combinatory-Logic
 two things to clarify :

The type of logic, which can be sequential or combinational.
The order of execution of statements, which can be sequential or concurrent.
Types of logic
In logic design:

******************A combinational circuit is one that implements a pure logic function without any state. There is no need for a clock in a combinational circuit.
A sequential circuit is one that changes every clock cycle and that remembers its state (using flip-flops) between clock cycles.
The following VHDL process is combinational:

process(x, y) begin
    z <= x or y;
end process;
We know it is combinational because:

It does not have a clock.
All its inputs are in its sensitivity list (the parenthesis after the process keyword). That means a change to any one of these inputs will cause the process to be re-evaluated.
The following VHDL process is sequential:

process(clk) begin
    if rising_edge(clk) then
        if rst = '1' then
            z <= '0';
        else
            z <= z xor y;
        end if;
    end if;
end process;
We know it is sequential because:

It is only sensitive to changes on its clock (clk).
Its output only changes value on a rising edge of the clock.
The output value of z depends on its previous value (z is on both sides of the assignment).
Model of Execution
To make a long story short, processes are executed as follow in VHDL:

Statements within a process are executed sequentially (i.e. one after the other in order).
Processes run concurrently relative to one another.
Processes in Disguise
So-called concurrent statements, essentially all statements outside a process, are actually processes in disguise. For example, this concurrent signal assignment (i.e. an assignment to a signal outside a process):

z <= x or y;
Is equivalent to this process:

process(x, y) begin
    z <= x or y;
end process;
That is, it is equivalent to the same assignment within a process that has all of its inputs in the sensitivity list. And by equivalent, I mean the VHDL standard (IEEE 1076) actually defines the behaviour of concurrent signal assignments by their equivalent process.

What that means is that, even though you didn't know it, this statement of yours in hex_display_decoder:

SEG_OUT <=  "1000000" when "0000",
            "1111001" when "0001",
            "0100100" when "0010",
            "0110000" when "0011",
            "0011001" when "0100",
            "0010010" when "0101",
            "0000010" when "0110",
            "1111000" when "0111",
            "0000000" when "1000",
            "0010000" when "1001",
            "0001000" when "1010",
            "0000011" when "1011",
            "1000110" when "1100",
            "0100001" when "1101",
            "0000110" when "1110",
            "0001110" when "1111",
            "1111111" when others;
