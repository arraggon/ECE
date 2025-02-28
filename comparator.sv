module comparator #(parameter N = 8, parameter b = 60, parameter c = 24) (
    input logic [N-1:0] a,
    output logic eq,
    output logic neq,
    output logic lt,
    output logic lte,
    output logic gt,
    output logic gte
);

    // Equal
    assign eq  = (a == b);
    
    // Not equal
    assign neq = (a != b);
    
    // Less than
    assign lt  = (a < b);
    
    // Less than or equal to
    assign lte = (a <= b);
    
    // Greater than
    assign gt  = (a >= c);//for hours
    
    // Greater than or equal to
    assign gte = (a >= b);

endmodule
