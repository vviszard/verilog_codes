module test_sd;
    reg n, rst, clk;
    wire op;

    sd s1(rst, n, clk, op);

    initial 
    begin
        $dumpfile("seq_det.vcd");
        $dumpvars(0,test_sd);
        $monitor("T= %d input= %b output %b", $time,n,op);
        clk = 1'b0; 
        rst = 1'b1;
        #15 rst = 1'b0;
    end

    always
        #5 clk = ~clk;

    initial
    begin
        #12 n = 0; 
        #10 n = 1;
        #10 n = 0;
        #10 n = 0;
        #10 n = 1;
        #10 n = 0;
        #10 n = 1;
        #10 n = 0;
        #10 n = 1;
        #10 n = 0;
        #10 n = 1;
        #10 n = 1;
        #10 n = 1;
        #10 n = 0;
        #10 n = 1;
        #10 n = 0;
        #10 n = 1;
        #10 n = 0;
        #10 n = 0;
        $finish;
    end
endmodule