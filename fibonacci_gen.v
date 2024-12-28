 module fibonacci_gen(fib,rst,clk);
    input clk;   
    input  rst;       
    output reg [31:0] fib;
    reg [31:0] prev; 
  reg [31:0] temp;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            fib <= 0;   
            prev <= 1;
        end else begin
          
            temp = fib + prev; 
            prev <= fib;       
            fib <= temp;       
        end
    end
endmodule

