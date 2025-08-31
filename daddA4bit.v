`timescale 1ns / 1ps
module daddA4bit(input [3:0] a, b, output [7:0] op );
wire [1:0] s1, c1;
wire [3:0] s2, c2;
wire [5:0] s3, c3;
wire p[4:0][4:0];
genvar i,j;
for (i=0;i<4;i=i+1) begin
for (j=0;j<4;j=j+1) begin
assign p[i][j]= a[j]*b[i];
end
end
ha q1(p[0][3], p[1][2], s1[0],c1[0]);
ha q2(p[1][3], p[2][2], s1[1],c1[1]);
ha q3(p[0][2], p[1][1], s2[0],c2[0]);
FA q4(p[2][1], p[3][0], s1[0], s2[1],c2[1]);
FA q5(s1[1], p[3][1], c1[0], s2[2], c2[2]);
FA q6(p[3][2], p[2][3], c1[1], s2[3],c2[3]);
ha q7(p[1][0], p[0][1], s3[0], c3[0]);
FA q8(s2[0], p[2][0], c3[0], s3[1], c3[1]);
FA q9(s2[1], c2[0], c3[1], s3[2], c3[2]);
FA qa(s2[2], c2[1], c3[2], s3[3], c3[3]);
FA qb(s2[3], c2[2], c3[3], s3[4], c3[4]);
FA qc(p[3][3], c2[3], c3[4], s3[5], c3[5]);
assign op= {c3[5], s3[5], s3[4], s3[3], s3[2], s3[1], s3[0], p[0][0]};
endmodule
