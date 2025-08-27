`timescale 1ns / 1ps

module ha( input a,b, output sum,co);
assign sum = a^b;
assign co = a&b;
endmodule

