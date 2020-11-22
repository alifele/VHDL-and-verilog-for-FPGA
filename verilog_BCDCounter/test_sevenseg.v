`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:16:49 06/09/2020
// Design Name:   bcd_counter
// Module Name:   A:/Projects/FPGA codes/bcd_counter/test_sevenseg.v
// Project Name:  bcd_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_sevenseg;

	// Inputs
	reg clk;
	reg [3:0] load;
	reg rstn;
	reg mode;
	reg enter;

	// Outputs
	wire [6:0] OUT;
	always #10 clk = ~clk;
	
	

	// Instantiate the Unit Under Test (UUT)
	bcd_counter uut (
		.clk(clk), 
		.load(load), 
		.rstn(rstn), 
		.mode(mode), 
		.OUT(OUT), 
		.enter(enter)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		load = 0;
		rstn = 0;
		mode = 0;
		enter = 0;

		// Wait 100 ns for global reset to finish
		#100;
        #100;
		enter =1;
		#30;
		enter = 0;
      #80;
		mode =1;
		#80;
		load = 4'b0101;
		enter = 1;
		#20;
		enter = 0;
		// Add stimulus here

	end
      
endmodule

