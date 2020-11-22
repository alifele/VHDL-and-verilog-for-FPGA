`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:39:54 06/09/2020
// Design Name:   compare
// Module Name:   A:/Projects/FPGA codes/compare_4_bit/test.v
// Project Name:  compare_4_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: compare
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
	reg [3:0] in1;
	reg [3:0] in2;
	reg [8:0] i;

	// Outputs
	wire less;
	wire equal;
	wire bigger;

	// Instantiate the Unit Under Test (UUT)
	compare uut (
		.in1(in1), 
		.in2(in2), 
		.less(less), 
		.equal(equal), 
		.bigger(bigger)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		in1 = 4'b0000;
		in2 = 4'b0000;
		
		#10;
		
		in1 = 4'b0101;
		in2 = 4'b1010;
		
		#10;
		
		in1 = 4'b1111;
		in2 = 4'b0001;
		
		for (i = 0; i<32; i=i+1)begin
		#10;
		in1 = $random;
		in2 = $random;
		
		end
        
		// Add stimulus here

	end
      
endmodule

