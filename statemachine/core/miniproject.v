// Input:
// 3 bits of requests
// In state machines, the most significant bit is request 1.
// Therefore, this 3 bits are defined as req[2:0].
// req[2] represents request 1
// req[1] represents request 2
// req[0] represents request 3

// Output:
// granted_req[0], granted_req[1] and granted_req[2]
// granted_req[0] = 1 request 1 being completed.
// granted_req[1] = 1 request 2 being completed.
// granted_req[2] = 1 request 3 being completed.

// States:
// Idle, Arbitor_nonegranted_req[2], Gnt1_nonegranted_req[2], Gnt2_nonegranted_req[2],
// Arbitor_granted_req[2], Gnt1_granted_req[2], Gnt2_granted_req[2], Gnt3_granted_req[2]
// 8 states, thus able to be represented by 3 bits.

// Problem statement:
// Make sure request 3 is getting arbitrated fairly if reques 1
// or request 2 always come in.

// Solution:
// Added arbitration to see if there's request 3 coming in during
// idle state.

// This is a Moore machine, referencing from
// Verilog HDL Templates for State Machines
// https://www.intel.com/content/dam/altera-www/global/en_US/others/support/examples/download/moore_state_machine_v.zip

module arbitor
(
    input clk, reset,
    input [2:0] req,
    output reg [2:0] granted_req
);

    reg [2:0] state;

    // Declare states
    parameter
        STATE_IDLE              =   3'b000,
        STATE_ARBITOR_NONEG2    =   3'b001,
        STATE_GNT0_NONEG2       =   3'b010,
        STATE_GNT1_NONEG2       =   3'b011,
        STATE_ARBITOR_G2        =   3'b100,
        STATE_GNT0_G2           =   3'b101,
        STATE_GNT1_G2           =   3'b110,
        STATE_GNT2_G2           =   3'b111;

    // Output depends only on the state
    always @ (state) begin
        case (state)
            STATE_GNT0_NONEG2, STATE_GNT0_G2:
                begin
                    granted_req[0] = 1;
                    granted_req[1] = 0;
                    granted_req[2] = 0;
                end
            STATE_GNT1_NONEG2, STATE_GNT1_G2:
                begin
                    granted_req[0] = 0;
                    granted_req[1] = 1;
                    granted_req[2] = 0;
                end
            STATE_GNT2_G2:
                begin
                    granted_req[0] = 0;
                    granted_req[1] = 0;
                    granted_req[2] = 1;
                end
            default:
                begin
                    granted_req[0] = 0;
                    granted_req[1] = 0;
                    granted_req[2] = 0;
                end
        endcase
    end

    // Determine the next state
    always @ (posedge clk or posedge reset) begin
        if (reset)
            state <= STATE_IDLE;
        else
            case (state)
                STATE_IDLE:
                    // Does not transition when no request
                    if (req[2:0] == 3'b000)
                        state <= STATE_IDLE;
                    else if (req[0] == 1'b0)
                        state = STATE_ARBITOR_NONEG2;
                    else if (req[0] == 1'b1)
                        state = STATE_ARBITOR_G2;

                STATE_ARBITOR_NONEG2:
                    if (req[0] == 1'b1)
                        state = STATE_GNT0_NONEG2;
                    else if (req[1] == 1'b1)
                        state = STATE_GNT1_NONEG2;
                    else
                        state = STATE_IDLE;

                STATE_GNT0_NONEG2:
                    // This is a blocking request, service until
                    // the request is cleared
                    if (req[0] == 1'b1)
                        state = STATE_GNT0_NONEG2;
                    else if (req[0] == 1'b0)
                        state = STATE_IDLE;

                STATE_GNT1_NONEG2:
                    // This is a blocking request, service until
                    // the request is cleared
                    if (req[1] == 1'b1)
                        state = STATE_GNT1_NONEG2;
                    else if (req[1] == 1'b0)
                        state = STATE_IDLE;

                STATE_ARBITOR_G2:
                    if (req[0] == 1'b1)
                        state = STATE_GNT0_G2;
                    else if (req[1] == 1'b1)
                        state = STATE_GNT1_G2;
                    else if (req[2] == 1'b1)
                        state = STATE_GNT2_G2;
                    else
                        state = STATE_IDLE;

                STATE_GNT0_G2:
                    // This is a blocking request, service until
                    // the request is cleared
                    if (req[0] == 1'b1)
                        state = STATE_GNT0_G2;
                    else if (req[1] == 1'b1)
                        state = STATE_GNT1_G2;
                    else
                        state = STATE_GNT2_G2;

                STATE_GNT1_G2:
                    // This is a blocking request, service until
                    // the request is cleared
                    if (req[1] == 1'b1)
                        state = STATE_GNT1_G2;
                    else
                        state = STATE_GNT2_G2;

                STATE_GNT2_G2:
                    // This is a blocking request, service until
                    // the request is cleared
                    if (req[2] == 1'b1)
                        state = STATE_GNT2_G2;
                    else
                        state = STATE_IDLE;
            endcase
    end

endmodule