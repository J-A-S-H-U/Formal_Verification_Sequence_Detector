module top;
reg in, clk = '0;
reg rst;

wire detect;

seq_detector DUT (.detect(detect), .in(in), .clk(clk), .rst(rst));

always #10 clk = ~clk;

initial
begin
	repeat(10)@(negedge clk)
	rst = '0;
	repeat(10)@(negedge clk)
	rst = '1;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '0;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(2)@(posedge clk)
	in = '1;
	repeat(50)@(posedge clk);
	$stop;
end
endmodule