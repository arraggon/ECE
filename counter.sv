module counter #(parameter N = 8) 
                (input logic clk,
                 input logic reset,
                 input logic add,
                 input logic minus,
                 input logic pause,   // New input for pausing the counter
                 output logic [N-1:0] q);

    always_ff @(posedge clk or posedge reset) begin
        if (reset) 
            q <= 0;
        else if (!pause)
            q <= q + 1;
        else begin
            if (!add)
                q <= q + 1;
            if (!minus)
                q <= q - 1;
        end
    end
endmodule
