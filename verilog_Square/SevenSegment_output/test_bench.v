`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:53:27 06/09/2020
// Design Name:   square
// Module Name:   A:/Projects/FPGA codes/square_sevenSegments/test_bench.v
// Project Name:  square_sevenSegments
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: square
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bench;

	// Inputs
	reg clk;
	reg rstn;

	// Outputs
	wire LED_RED;
	wire LED_GREEN;
	wire [6:0] SS1_0;
	wire [6:0] SS1_1;
	wire [6:0] SS2_0;
	wire [6:0] SS2_1;
	
	always #4 clk = ~clk;

	// Instantiate the Unit Under Test (UUT)
	square uut (
		.clk(clk), 
		.rstn(rstn), 
		.LED_RED(LED_RED), 
		.LED_GREEN(LED_GREEN), 
		.SS1_0(SS1_0), 
		.SS1_1(SS1_1), 
		.SS2_0(SS2_0), 
		.SS2_1(SS2_1)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rstn = 1;

		// Wait 100 ns for global reset to finish
		#50;
		rstn = 0;
		#20; 
		rstn = 1;
		#800;
		rstn = 0;
		#10;
		rstn = 1;
		#300;
		
		// Add stimulus here

	end
      
endmodule

