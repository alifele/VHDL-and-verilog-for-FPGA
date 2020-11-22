`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:58:38 06/09/2020
// Design Name:   decofer
// Module Name:   A:/Projects/FPGA codes/bcd_to_common_cathod_SevenSeg/test.v
// Project Name:  bcd_to_common_cathod_SevenSeg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decofer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire [6:0] out;
	
	reg [5:0] i;

	// Instantiate the Unit Under Test (UUT)
	decofer uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#50;
		
		for (i=0; i<64; i = i +1)begin
		#10;
		in = $random;
		while (in > 9)
			in = $random;
		
		
		end
        
		// Add stimulus here

	end
      
endmodule

