module chooseClk(
    input logic Clk0,
    input logic Clk1,
    input logic switch,
    output logic clockOut
);

    always_comb begin
        if (!switch)
            clockOut = Clk0;
        else
            clockOut = Clk1;
    end
endmodule
