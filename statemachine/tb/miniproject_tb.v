// testbench for miniproject
module miniproject_tb ();

    reg  clk, reset;
    reg [2:0] req;
    wire [2:0] granted_req;

    // instantiate the FSM
    arbitor dut (.clk(clk), .reset(reset),
    .req(req), .granted_req(granted_req));

initial
    begin

// Release clock so that the state machine is not holded back
    reset = 0;      clk = 1; #5;   // do the reset, active low
					clk = 0; #5;
	reset = 1;		clk = 1; #5;   // 10ns period

// Try single request behavior of G1, G2, G3 seperately.
	req = 3'b001;	clk = 0; #5;
					clk = 1; #5;   // Add request 1

    if (granted_req == 3'b001)   // check if worked as planned
        $display("Successfully serviced request 1");
    else
        $display("FAILED! G1 is 0, supposed to be 1.");

	req = 3'b010;	clk = 0; #5;
					clk = 1; #5;   // Add request 1

    if (granted_req == 3'b010)   // check if worked as planned
        $display("Successfully serviced request 2");
    else
        $display("FAILED! G2 is 0, supposed to be 1.");

	req = 3'b100;	clk = 0; #5;
					clk = 1; #5;   // Add request 1

    if (granted_req == 3'b100)   // check if worked as planned
        $display("Successfully serviced request 3");
    else
        $display("FAILED! G3 is 0, supposed to be 1.");

// Try multiple request behavior of G1, G2, G3 concurrently
	req = 3'b000;	clk = 0; #5;   // Reset all request
					clk = 1; #5;
    if (granted_req == 3'b000)   // check if worked as planned
        $display("Successfully reset all requests");
    else
        $display("FAILED TO RESET REQUESTS");

	req = 3'b111;	clk = 0; #5;   // Add request 1,2,3
					clk = 1; #5;

    if (granted_req == 3'b001)
        $display("Successfully serviced request 1");
    else
        $display("FAILED! G1 is 0, supposed to be 1.");
					clk = 0; #5;
					clk = 1; #5;   // 10ns period

    if (granted_req == 3'b010)
        $display("Successfully serviced request 2");
    else
        $display("FAILED! G2 is 0, supposed to be 1.");
					clk = 0; #5;
					clk = 1; #5;   // 10ns period

    if (granted_req == 3'b100)
        $display("Successfully serviced request 3");
    else
        $display("FAILED! G3 is 0, supposed to be 1.");
					clk = 0; #5;
					clk = 1; #5;   // 10ns period

// Try multiple request behavior of G2, G3 concurrently
	req = 3'b000;	clk = 0; #5;   // Reset all request
					clk = 1; #5;
    if (granted_req == 3'b000)   // check if worked as planned
        $display("Successfully reset all requests");
    else
        $display("FAILED TO RESET REQUESTS");

	req = 3'b110;	clk = 0; #5;   // Add request 1,2,3
					clk = 1; #5;

    if (granted_req == 3'b010)
        $display("Successfully serviced request 2");
    else
        $display("FAILED! G2 is 0, supposed to be 1.");
					clk = 0; #5;
					clk = 1; #5;   // 10ns period

    if (granted_req == 3'b100)
        $display("Successfully serviced request 3");
    else
        $display("FAILED! G3 is 0, supposed to be 1.");
					clk = 0; #5;
					clk = 1; #5;   // 10ns period

    end
endmodule
