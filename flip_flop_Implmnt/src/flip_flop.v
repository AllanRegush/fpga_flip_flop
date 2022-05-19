module Flip_Flop
	(input i_Clk,
	 input i_Switch_2,
	 output o_LED_2);

	reg r_LED_2    = 1'b0;
	reg r_Switch_2 = 1'b0;

	always @(posedge i_Clk)
	begin
		r_Switch_2 <= i_Switch_2;
		
		if (i_Switch_2 == 1'b0 && r_Switch_2 == 1'b1)
		begin
			r_LED_2 = ~r_LED_1;
		end
	end

	assign o_LED_2 = r_LED_2;
endmodule