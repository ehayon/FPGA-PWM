module mojo_top(
    input clk,
    input rst_n,
    input cclk,
    output[7:0]led,
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output [3:0] spi_channel,
    input avr_tx,
    output avr_rx,
    input avr_rx_busy
    );

wire rst = ~rst_n;

assign out1 = 1'b0;
assign spi_miso = 1'bz;
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;

pwm #(.CTR_LEN(3)) pwm_1(
	.rst(rst),
	.clk(clk),
	.compare(3'd0),
	.pwm(led[0])
);
pwm #(.CTR_LEN(3)) pwm_2(
	.rst(rst),
	.clk(clk),
	.compare(3'd1),
	.pwm(led[1])
);
pwm #(.CTR_LEN(3)) pwm_3(
	.rst(rst),
	.clk(clk),
	.compare(3'd2),
	.pwm(led[2])
);
pwm #(.CTR_LEN(3)) pwm_4(
	.rst(rst),
	.clk(clk),
	.compare(3'd3),
	.pwm(led[3])
);
pwm #(.CTR_LEN(3)) pwm_5(
	.rst(rst),
	.clk(clk),
	.compare(3'd4),
	.pwm(led[4])
);
pwm #(.CTR_LEN(3)) pwm_6(
	.rst(rst),
	.clk(clk),
	.compare(3'd5),
	.pwm(led[5])
);
pwm #(.CTR_LEN(3)) pwm_7(
	.rst(rst),
	.clk(clk),
	.compare(3'd6),
	.pwm(led[6])
);
pwm #(.CTR_LEN(3)) pwm_8(
	.rst(rst),
	.clk(clk),
	.compare(3'd7),
	.pwm(led[7])
);



endmodule
