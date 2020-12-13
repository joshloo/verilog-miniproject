// testbench for miniproject
module miniproject_tb ();

    reg  clk, reset;
    reg [2:0] req;
    wire g1,g2,g3;

    // instantiate the FSM
    arbitor dut (.clk(clk), .reset(reset),
    .req(req), .g1(g1), .g2(g2), .g3(g3));

initial
    begin
    // enable monitoring of wires of interest
    //$monitor("reset=%d req=%d g1=%d g2=%d g3=%d\n", 
    //            reset,req,g1, g2, g3);
    clk = 0; #5; clk = 1; #5;   // 10ns period
    clk = 0; #5; clk = 1; #5;   // 10ns period

    reset = 1;            #5    // do the reset 
    reset = 0;   clk = 0; #5
    req = 3'b001;clk = 1; #5    // Add request 3

    clk = 0; #5; clk = 1; #5;   // 10ns period

    if (g3 == 1)                // check if worked as planned
        $display("Successfully serviced request 3\n");
    else
        $display("FAILED! G3 is 0, supposed to be 1.\n");
    end
endmodule
