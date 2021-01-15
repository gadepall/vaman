/*Program for blinking LED*/
module helloworldfpga(
    output wire redled,
    output wire greenled,
    output wire blueled
);
    wire clk;

    qlal4s3b_cell_macro u_qlal4s3b_cell_macro (
        .Sys_Clk0 (clk),
    );

    reg[26:0] delay;
     reg	led;
always@(posedge clk) begin
delay = delay+1;
if(delay==27'b101111101011110000100000000)
begin
delay=27'b0;
led=!led;
end
end
//    assign blueled = led;	
assign redled = led; //If you want to change to red, 
endmodule


