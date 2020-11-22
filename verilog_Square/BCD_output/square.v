`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:52:48 06/09/2020 
// Design Name: 
// Module Name:    square 
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
module square(clk, rstn, LED_RED, LED_GREEN, SS1, SS2);
input clk, rstn;
output reg LED_RED=0, LED_GREEN=0;
output [6:0] SS1, SS2;


reg SRED=0, SGREEN=1;
reg [6:0] out;
reg next_state, cur_state;
reg change_state = 0;


assign SS1 = out;
assign SS2 = out;


always @(change_state)begin
	cur_state = next_state;
	change_state = 0;
	
	if (cur_state == SGREEN)begin
		out =42;
		LED_GREEN = 1;
		LED_RED = 0;
	end
	else begin
		out =36;
		LED_RED = 1;
		LED_GREEN = 0;
	end
	
end
	
	

always @(rstn or posedge clk)begin

	if (!rstn)begin //start of if1
		next_state = SGREEN;
		change_state = 1;
	end //end of if1
		
	else begin //start of else1

			case (cur_state)

			SRED:begin
				if (out ==0)begin
					next_state = SGREEN;
					change_state = 1;
				end
				else 
					out = out-1;
			end  // end of SRED


			SGREEN:begin
				if(out ==0)begin
					next_state = SRED;
					change_state = 1;
				end
				else
					out = out -1;
			end // end of SGREEN

			endcase
			
	end  // end of else1

end  // end of always


endmodule
