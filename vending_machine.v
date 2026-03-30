`timescale 1ns / 1ps

module vending_machine(
    input clk,
    input reset,
    input [1:0] coin,   // 01 = ₹5, 10 = ₹10
    output reg dispense,
    output reg change
);

reg [1:0] state, next_state;

// State encoding
parameter S0  = 2'b00;  // ₹0
parameter S5  = 2'b01;  // ₹5
parameter S10 = 2'b10;  // ₹10

// State register (sequential)
always @(posedge clk or posedge reset) begin
    if (reset)
        state <= S0;
    else
        state <= next_state;
end

// Next state logic (combinational)
always @(*) begin
    case(state)
        S0: begin
            if (coin == 2'b01) next_state = S5;
            else if (coin == 2'b10) next_state = S10;
            else next_state = S0;
        end

        S5: begin
            if (coin == 2'b01) next_state = S10;
            else if (coin == 2'b10) next_state = S0; // 5+10=15
            else next_state = S5;
        end

        S10: begin
            if (coin == 2'b01) next_state = S0; // 10+5=15
            else if (coin == 2'b10) next_state = S0; // 10+10=20
            else next_state = S10;
        end

        default: next_state = S0;
    endcase
end

// Output logic
always @(*) begin
    dispense = 0;
    change = 0;

    case(state)
        S5: begin
            if (coin == 2'b10) dispense = 1; // 15
        end

        S10: begin
            if (coin == 2'b01) dispense = 1; // 15
            else if (coin == 2'b10) begin
                dispense = 1; // 20
                change = 1;   // return 5
            end
        end
    endcase
end

endmodule
