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
module square(clk, rstn, LED_RED, LED_GREEN, SS1_0, SS1_1, SS2_0, SS2_1);
input clk, rstn;
output reg LED_RED=0, LED_GREEN=0;
output [6:0] SS1_0, SS2_0, SS1_1, SS2_1;


reg SRED=0, SGREEN=1;
reg [3:0] out0, out1;
reg next_state, cur_state;
reg change_state = 0;


decoder Decoder0(.in(out0), .out(SS1_0));
decoder Decoder1(.in(out1), .out(SS1_1));
decoder Decoder2(.in(out0), .out(SS2_0));
decoder Decoder3(.in(out1), .out(SS2_1));


always @(change_state)begin
	cur_state = next_state;
	change_state = 0;
	
	if (cur_state == SGREEN)begin
		out0 = 2;
		out1 = 4; //42
		LED_GREEN = 1;
		LED_RED = 0;
	end
	else begin
		out0 = 6;
		out1 = 3;
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
				if (out0 ==0 && out1 ==0)begin
					next_state = SGREEN;
					change_state = 1;
				end
				else begin 
					if (out0 == 0)begin
						out1 = out1-1;
						out0 = 9;
					end
					else	
						out0 = out0-1;

				end
			
			end  // end of SRED


			SGREEN:begin
				if(out0 ==0 && out1 ==0)begin
					next_state = SRED;
					change_state = 1;
				end
				else begin 
					if (out0 == 0)begin
						out1 = out1-1;
						out0 = 9;
					end
					else	
						out0 = out0-1;

				end
			end // end of SGREEN

			endcase
			
	end  // end of else1

end  // end of always


endmodule
