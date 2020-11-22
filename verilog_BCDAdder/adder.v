`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:08:36 06/09/2020 
// Design Name: 
// Module Name:    adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder(in1, in2, cin, out, cout);

input [3:0] in1, in2;
input cin;
output reg [3:0] out;
output reg cout;

reg [3:0] pre_out;



always @(in1 or in2 or cin)begin

pre_out = in1 + in2;

if (pre_out > 9)begin
	cout = 1;
	out = pre_out -10;
	
end
	
else begin
 cout = 0;
 out = pre_out;

end


end











endmodule
