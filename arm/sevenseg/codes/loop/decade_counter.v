/*Function for driving a seven segment display through 
a decimal input
January 19,2021
Code by G V V Sharma
Released under GNU GPL
*/

//declaring the blink module
module helloworldfpga(
                 output a,
                 output b,
                 output c,
             output d,
               output e,
              output f,
               output g

);

//declaring variables
reg[26:0] delay;
reg[7:0] num = 0;
wire clk;


    qlal4s3b_cell_macro u_qlal4s3b_cell_macro (
        .Sys_Clk0 (clk),
    );


//begin function takes decimal input and gives seven segment output
function automatic [6:0] gpio_out;

    input [6:0] num_i; 

begin
    case (num_i)   //case statement for each decimal input
        0 : gpio_out = 7'b0000001;
        1 : gpio_out = 7'b1001111;
        2 : gpio_out = 7'b0010010;
        3 : gpio_out = 7'b0000110;
        4 : gpio_out = 7'b1001100;
        5 : gpio_out = 7'b0100100;
        6 : gpio_out = 7'b0100000;
        7 : gpio_out = 7'b0001111;
        8 : gpio_out = 7'b0000000;
        9 : gpio_out = 7'b0000100;
        
        //switch off 7 segment character when the bcd digit is not a decimal number.
        default : gpio_out = 7'b1111111; 
    endcase
end
endfunction
//end function

//counter loop
always@(posedge clk) 
	begin
		delay = delay+1; //incrementing the counter.

		//counts from 0 to 20000000 in 1 second
		if(delay > 20000000) //check delay count
			begin
				delay=27'b0;
				num=num+1; //reset the led
			end //end delay count
		if(num > 9)
			begin
				num = 0;
			end //end if
		end 

//end counter loop


//display number
assign {a, b,c,d,e,f,g}=gpio_out(num);
endmodule
//end of the module









