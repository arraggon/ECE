module sixtychanger 
    (
    input logic [7:0] bef,
    input logic C,
    input logic add,
    input logic minus,
    
    output logic [7:0] aft
    );

    always_comb begin
        if (add) begin
            if (bef < 8'd59)
                assign aft = bef + 8'd1;
            else
                assign aft = 8'd0;
        end
        else if (minus) begin
            if (bef > 8'd0)
                assign aft = bef - 8'd1;
            else
                assign aft = 8'd59;
        end else begin
            assign aft = bef;
        end
    end

endmodule
