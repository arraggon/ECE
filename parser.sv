module parser (
    input  logic [7:0] value,  // 32-bit input value
    output logic [3:0]  ones,   // 4-bit ones place value
    output logic [3:0]  tens    // 4-bit tens place value
);

    // Extract the ones place value
    assign ones = value % 10;

    // Extract the tens place value
    assign tens = (value / 10) % 10;

endmodule
