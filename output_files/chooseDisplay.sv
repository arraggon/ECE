module displayMethod(
    input logic [7:0] in0,
	 input logic [7:0] in1,
    input logic switch,
    output logic [7:0] out
);


    always_comb begin
        if (!switch)
            out = in0;
        else
            out = in1;
    end
endmodule
