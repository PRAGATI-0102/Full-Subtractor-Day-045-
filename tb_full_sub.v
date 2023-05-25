`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 10:29:53 PM
// Design Name: 
// Module Name: tb_full_sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_full_sub();

        reg a,b,bi;
        wire d,bo;
        
        full_sub dut(a,b,bi,d,bo);
        
        initial
        begin
            a = 0;
            b = 0;
            bi = 0;
        end
        
        always #4 a = a + 1'b1;
        always #2 b = b + 1'b1;
        always #1 bi = bi + 1'b1;
        
        initial
        #20 $finish;
             
endmodule
