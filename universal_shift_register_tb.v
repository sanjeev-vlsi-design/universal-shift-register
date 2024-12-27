
module shift_reg_tb;
  parameter size = 8;

    reg clk;
    reg rst;
    reg [1:0] mode;
    reg [size -1:0] prl_in;
    reg srl_in;
    wire [size -1:0] out;
    wire srl_out;

    shift_reg #(size) uut (
        .clk(clk),
        .rst(rst),
        .mode(mode),
        .prl_in(prl_in),
        .srl_in(srl_in),
        .out(out),
        .srl_out(srl_out)
    );

    always begin
       #5 clk=~clk;
    end

    initial begin
        clk=0;
        rst = 1;
        mode = 2'b00;
        prl_in = 0;
        srl_in = 0;


        #10 rst = 0;


        #10 mode = 2'b11; prl_in = 8'b10101010;
        #10 mode = 2'b00;

         #10 mode = 2'b01; srl_in = 1;
        #10 mode = 2'b01; srl_in = 0;


        #10 mode = 2'b10; srl_in = 1;
        #10 mode = 2'b10; srl_in = 0;

        #10 mode = 2'b00;

        #10 rst = 1;
        #10 rst = 0;

        #20 $finish;
    end

endmodule


