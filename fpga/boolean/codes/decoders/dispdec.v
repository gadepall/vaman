/*BCD to 7 segment display decoder
January 21,2021
Code by G V V Sharma
Released under GNU GPL
*/

//declaring the blink module
module helloworldfpga(

input  wire W,
input  wire X,
input  wire Y,
input  wire Z,

output wire a,
output wire b,
output wire c,
output wire d,
output wire e,
output wire f,
output wire g

);


//Display Decoder
always @(*)
begin

a=(!Z&!Y&!X&W)|(!Z&Y&!X&!W);
b=(!Z&Y&!X&W)|(!Z&Y&X&!W);
c=(!Z&!Y&X&!W);
d=(!Z&!Y&!X&W)|(!Z&Y&!X&!W)|(!Z&Y&X&W);
e=(!Z&!Y&!X&W)|(!Z&!Y&X&W)|(!Z&Y&!X&!W)|(!Z&Y&!X&W)|(!Z&Y&X&W)|(Z&!Y&!X&W);
f=(!Z&!Y&!X&W)|(!Z&!Y&X&!W)|(!Z&!Y&X&W)|(!Z&Y&X&W);
g=(!Z&!Y&!X&!W)|(!Z&!Y&!X&W)|(!Z&Y&X&W);

end
endmodule
//end of the module









