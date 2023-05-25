`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 10:21:40 PM
// Design Name: 
// Module Name: full_sub
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


module full_sub(a,b,bi,d,bo);

        input a,b,bi;
        output d,bo;
        
        wire v1,v2,v3,v1bar,abar;
        
        not N1(abar,a);
        not N2(v1bar,v1);
        xor X1(v1,a,b);
        xor X2(d,v1,bi);
        and A1(v2,abar,b);
        and A2(v3,v1bar,bi);
        or O1(bo,v2,v3);
        
endmodule
