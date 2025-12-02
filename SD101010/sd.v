module sd(rst,n,clk,op);
    input n,rst,clk;
    output reg op;
    reg [3:0] ps,ns;

    parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4, s5 = 5;

    always @(posedge clk, posedge rst) 
    begin
        if (rst)
            ps <= s0;
        else
            ps <= ns;       
    end

    always @(ps,n) 

        case (ps)
        s0: 
            begin
                op = n? 0 : 0;
                ns = n? s1 : s0;
            end 
        s1: 
            begin
                op = n? 0 : 0;
                ns = n? s1 : s2;
            end
        s2: 
            begin
                op = n? 0 : 0;
                ns = n? s3 : s0;
            end
        s3: 
            begin
                op = n? 0 : 0;
                ns = n? s1 : s4;
            end
        s4: 
            begin
                op = n? 0 : 0;
                ns = n? s5 : s0;
            end
        s5: 
            begin
                op = n? 0 : 1;
                ns = n? s1 : s0;
            end
        endcase    
endmodule