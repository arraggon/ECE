module clock_divider (
    input logic clk_in,          // 50 MHz input clock
    output logic clk_out         // 1 Hz output clock
);

    logic [100:0] counter;        // 26-bit counter to divide the clock

    always_ff @(posedge clk_in) begin
        if (counter == 2500 - 1) begin //25000000 for normal; less for faster 2500 to see hour change
            counter <= 0;
            clk_out <= ~clk_out;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule