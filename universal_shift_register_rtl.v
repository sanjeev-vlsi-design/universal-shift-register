module shift_reg #(parameter size = 8) (
    input clk,  
    input rst,
    input [1:0] mode,
    input [size-1:0] prl_in,
    input srl_in,
    output reg [size-1:0] out,
    output reg srl_out
);


    always @(posedge clk or posedge rst) begin
        if (rst) begin
            out <= 0;
            srl_out <= 0;
        end else begin
            case (mode)
                2'b00: begin
                    out<= out;
                end
                2'b01: begin

                    out <= {out[size-2:0], srl_in};
                    srl_out <= out[size-1]; 
                end
                2'b10: begin
                    out <= {srl_in, out[size-1:1]};
                    srl_out <= out[0]; 
                end
                2'b11: begin

                    out <= prl_in;
                end
                default: begin

                    out <= out;
                end
            endcase
        end
    end

endmodule
