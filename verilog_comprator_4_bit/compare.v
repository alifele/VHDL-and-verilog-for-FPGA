`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:31:02 06/09/2020 
// Design Name: 
// Module Name:    compare 
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
module compare(in1, in2, less,equal,bigger);
input [3:0] in1, in2;
output  reg less, equal, bigger;




always @(in1 or in2)begin

if (in1 == in2)begin
	equal = 1'b1;
	less = 1'b0;
	bigger = 1'b0;
end
	
if (in1 > in2)begin
	 equal = 0;
	 less = 0;
	 bigger =1 ;
end

if (in1 < in2)begin
	 equal = 0;
	 less = 1;
	 bigger = 0;

end
	
end



endmodule
