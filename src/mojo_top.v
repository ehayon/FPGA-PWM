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


genvar i;

generate
	for(i=0; i < 8; i=i+1) begin: pwm_generate
		pwm #(.CTR_LEN(3)) pwm (
			.rst(rst),
			.clk(clk),
			.compare(i),
			.pwm(led[i])
		);
	end
endgenerate

endmodule
