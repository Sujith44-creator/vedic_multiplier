module vedic_2x2 (
input [1 :0 ] a, // M u ltiplican d
input [1 :0 ] b, // M ult iplier
output [3:0 ] p // Product
);
wire p0,p1,p2,p3,p4,p5;
assign p0 = a[0] & b [0]; // LSB
assign p1 = a[1 ] & b[0];
assign p2 = a[0 ] & b[1 ];
assign p3 = a[1 ] & b[1]; // M SB
wire s1, c1;
assign s1 = p1 ^ p2;
assign c1 = p1 & p2;
wire s2, c2;
assign s2 = p3 ^ c1;
assign c2 = p3 & c1 ;
assign p[0] = p0 ;
assign p[1] = s1;
assign p[2] = s2;
assign p[3 ] = c2;
endmodule
