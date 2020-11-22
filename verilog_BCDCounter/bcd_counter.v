`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:22:28 06/09/2020 
// Design Name: 
// Module Name:    bcd_counter 
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
module bcd_counter(clk, load, rstn, mode, OUT, enter);

input [3:0] load;
input clk, rstn, mode, enter;
output wire [6:0] OUT;
reg [3:0] out;


decofer decoder(.in(out), .out(OUT));

//assign OUT = seven_reg;




always @ (posedge clk)begin

	if (enter == 1)
		out = load;
		
	else begin 

		if (mode ==1)begin

			if (out < 9 && out >= 0) 
				out = out+1;
			else 
				out = 4'b0000;
		end

		else begin

			if (out <=9 && out > 0 ) 
					out = out-1;
				else 
					out = 4'b1001;

		end
	end 
	
	
	end
	

endmodule
