`timescale 1ns/1ps

module tb_ring_counter;

    reg clk;
    reg rst;
    wire [3:0] q;

    ring_counter dut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // 10 ns clock period
    always #5 clk = ~clk;

    initial begin
        $dumpfile("ring_counter.vcd");
        $dumpvars(0, tb_ring_counter);

        clk = 0;
        rst = 1;

        // Apply reset
        #12;
        rst = 0;

        // Observe 8 clock cycles
        repeat (8) begin
            @(posedge clk);
            #1;
            $display("Time=%0t q=%b", $time, q);
        end

        $finish;
    end

endmodule
