`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:14:35 06/09/2020
// Design Name:   adder
// Module Name:   A:/Projects/FPGA codes/BCD_adder/test.v
// Project Name:  BCD_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
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
	reg cin;

	// Outputs
	wire [3:0] out;
	wire cout;
	
	reg [3:0] i;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.in1(in1), 
		.in2(in2), 
		.cin(cin), 
		.out(out), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		  for (i=0; i<16; i=i+1)begin
		  
		  #10;
		  in1 = $random;
		  while (in1 >10)
			in1 = $random;
			
		  in2 = $random;
		  while (in2 > 10)
			in2 = $random;
			
			
		  
		  
		  end
		// Add stimulus here

	end
      
endmodule

