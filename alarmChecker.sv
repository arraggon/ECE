module alarmChecker (
    input logic [7:0] hr,
    input logic [7:0] min,
    input logic [7:0] sec,
    
    input logic add,
    input logic minus,
    
    input logic [3:0] switch,
    input logic clk,  // Added clock signal

    output logic alarmOut,
    
    output logic [7:0] hrOut,
    output logic [7:0] minOut,
    output logic [7:0] secOut
);

    logic [7:0] alarmHr = 8'h00; // 0 in hexadecimal
    logic [7:0] alarmMin = 8'h00; // 0 in hexadecimal
    logic [7:0] alarmSec = 8'h00; // 0 in hexadecimal

    logic alarmOn;

    always_ff @(posedge clk) begin
        if (switch[0]) begin
            if (switch[1]) begin
                if (!add && minus) begin
                    if (alarmHr < 8'h23) // Handle 24-hour format overflow
                        alarmHr <= alarmHr + 1;
                end
                if (!minus && add) begin
                    if (alarmHr > 8'h00)
                        alarmHr <= alarmHr - 1;
                end
            end
            if (switch[2]) begin
                if (!add && minus) begin
                    if (alarmMin < 8'h59)
                        alarmMin <= alarmMin + 1;
                end
                if (!minus && add) begin
                    if (alarmMin > 8'h00)
                        alarmMin <= alarmMin - 1;
                end
            end
            if (switch[3]) begin
                if (!add && minus) begin
                    if (alarmSec < 8'h59)
                        alarmSec <= alarmSec + 1;
                end
                if (!minus && add) begin
                    if (alarmSec > 8'h00)
                        alarmSec <= alarmSec - 1;
                end
            end
        end

        // Update alarmOn based on the time comparison
        if ((hr == alarmHr) && (min == alarmMin) && (sec == alarmSec)) begin
            alarmOn <= 1;
        end else begin
            alarmOn <= 0;
        end
    end

    always_comb begin
        hrOut = alarmHr;
        minOut = alarmMin;
        secOut = alarmSec;
        alarmOut = alarmOn; // Update the output alarm signal based on the registered value
    end

endmodule

