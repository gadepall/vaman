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

//display number
assign {a, b,c,d,e,f,g}=gpio_out(3);
endmodule
//end of the module







