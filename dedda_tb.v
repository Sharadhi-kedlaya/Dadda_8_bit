`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:58:58 06/17/2019
// Design Name:   Dedda_mul
// Module Name:   D:/xilinx_simulation/blog_mul/dedda_tb.v
// Project Name:  blog_mul
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dedda_mul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dedda_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] op;

	// Instantiate the Unit Under Test (UUT)
	Dedda_mul uut (
		.a(a), 
		.b(b), 
		.op(op)
	);

	
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
      a = 8'b00101011;
		b = 8'b00001001; 
		#100;
      a = 8'b00101011;
		b = 8'b01001001; 
		#100;
      a = 8'b00101011;
		b = 8'b00001011; 
		#100;
      a = 8'b00101111;
		b = 8'b00001001; 
		#100;
      a = 8'b00001011;
		b = 8'b00101001; 
		#100;
      a = 8'b11101011;
		b = 8'b00001001; 
		#100;
      a = 8'b00101011;
		b = 8'b00001001; 
		// Add stimulus here

	end
      
endmodule

