module assertions (detect, in, clk, rst, current, next);
input detect;
input in;
input clk;
input rst;
input current;
input next;


//1

property current_always_valid_p;
	@(posedge clk)
	!($isunknown(current));
endproperty
current_always_valid_a: assert property(current_always_valid_p);


//2
property output_always_valid_p;
	@(posedge clk)
	!($isunknown(detect));
endproperty
output_always_valid_a: assert property(output_always_valid_p);

//3



endmodule