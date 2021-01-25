/*Program for driving a seven segment display
January 18,2021
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

reg [6:0] gpio_out=7'b1001100;

assign {a, b,c,d,e,f,g}=gpio_out[6:0];
endmodule
//end of the module







