module fibonacci_gen_tb;
reg clk;
    reg rst;
    wire [31:0] fib;

    fibonacci_gen uut (
        .clk(clk),
        .rst(rst),
        .fib(fib)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

        $monitor("Time=%0t | Reset=%b | Fibonacci=%d", $time, rst, fib);

        rst = 1; #10;   
        rst = 0; #10000; 

        $finish;
    end

endmodule

