module change (
	input logic [2:0] C,
	input logic clk,
	input logic reset,
	output logic R
);
	logic enable;

	// Generate the enable signal based on C
	always_comb begin
		if (C[0] == C[1] && C[1] == C[2])
			enable = 1'b1;
		else
			enable = 1'b0;
	end

	// Use the enable signal to control the output logic
	always_ff @(posedge clk or posedge reset) begin
		if (reset) begin
			R <= 1'b0;
		end else if (enable) begin
			R <= clk;
		end else begin
			R <= R;  // Maintain the previous state (pausing the clock effect)
		end
	end

endmodule
