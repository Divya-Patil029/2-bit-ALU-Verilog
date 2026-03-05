module alu_2bit(
    input [1:0] A,
    input [1:0] B,
    input [2:0] sel,
    output reg [1:0] result,
    output reg carry
);

always @(*) begin
    case(sel)
        3'b000: {carry, result} = A + B;
        3'b001: {carry, result} = A - B;
        3'b010: begin
                    result = A & B;
                    carry = 0;
                end
        3'b011: begin
                    result = A | B;
                    carry = 0;
                end
        3'b100: begin
                    result = A ^ B;
                    carry = 0;
                end
        default: begin
                    result = 2'b00;
                    carry = 0;
                end
    endcase
end

endmodule
