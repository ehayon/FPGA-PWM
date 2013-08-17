`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Ethan Hayon
// 
// Create Date:    17:34:21 08/16/2013 
// Design Name: 
// Module Name:    pwm 
// Project Name: Pulse-Width Modulation
// Target Devices: Spartan-6 XC6SLX9
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pwm #( parameter CTR_LEN = 8 ) (
	input clk,
	input rst,
	input [CTR_LEN - 1 : 0] compare,
	output pwm
    );
	 
reg pwm_d, pwm_q;
reg [CTR_LEN - 1 : 0] ctr_d, ctr_q;
assign pwm = pwm_q;

always @(*) begin
	ctr_d = ctr_q + 1'b1;
	
	if(compare > ctr_q) begin
		pwm_d = 1'b1;
	end else begin
		pwm_d = 1'b0;
	end
end

always @(posedge clk) begin
	if(rst) begin
		ctr_q <= 1'b0;
	end else begin
		ctr_q <= ctr_d;
	end
	
	pwm_q <= pwm_d;
end


endmodule
