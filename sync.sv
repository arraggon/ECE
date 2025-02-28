module sync(
    input logic clk,
    input logic d,
    output logic q
);

    logic n1; // Internal signal

    always_ff@(posedge clk) begin
        n1 <= d; // Nonblocking assignment
        q <= n1; // Nonblocking assignment
    end

endmodule
