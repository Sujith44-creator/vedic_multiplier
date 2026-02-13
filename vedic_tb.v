module vedic_2x2_tb;
    reg [1:0] a;
    reg [1:0] b;
    wire [3:0] p;
    // Instantiate the Unit Under Test (UUT)
    vedic_2x2 uut (.a(a),.b(b),.p(p));
    initial begin
        $display("Time\ta\tb\tp");
        $monitor("a=%b b=%b->p=%b", $time, a, b, p);
// Apply all possible combinations (2x2 = 4x4 = 16 combinations)
        a = 2'b00; b = 2'b00; #10;
        a = 2'b01; b = 2'b01; #10;
        a = 2'b10; b = 2'b10; #10;
        a = 2'b11; b = 2'b01; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b11; b = 2'b11; #10;// this case make c1=1 
        $finish; 
    end
endmodule
