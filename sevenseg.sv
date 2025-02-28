module sevenseg (
    input logic [3:0] A,
    output logic [6:0] Z
);

    always_comb
        case (A)
            0: Z = 7'b1000000; // 0
            1: Z = 7'b1111001; // 1
            2: Z = 7'b0100100; // 2
            3: Z = 7'b0110000; // 3
            4: Z = 7'b0011001; // 4
            5: Z = 7'b0010010; // 5
            6: Z = 7'b0000010; // 6
            7: Z = 7'b1111000; // 7
            8: Z = 7'b0000000; // 8
            9: Z = 7'b0010000; // 9
            default: Z = 7'b1111111; // All segments off
        endcase
endmodule
