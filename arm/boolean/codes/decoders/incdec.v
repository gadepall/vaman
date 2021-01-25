/*Incrementing Decoder
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


reg A,B,C,D;

always @(*)
begin

//Incrementing Decoder
D = (W&X&Y&(!Z))|((!W)&(!X)&(!Y)&Z);//Boolean function for D
C=((!Z)&(!Y)&(X)&W)|((!Z)&(Y)&!X&(!W))|((!Z)&Y&(!X)&W)|((!Z)&Y&X&(!W));
B=((!Z)&(!Y)&!X&W)|((!Z)&!Y&(X)&(!W))|((!Z)&Y&(!X)&W)|((!Z)&Y&X&(!W));
A = ((!W)&(!X)&(!Y)&(!Z))|((!W)&(X)&(!Y)&(!Z))|((!W)&(!X)&Y&(!Z))|((!W)&X&Y&(!Z))|((!W)&(!X)&(!Y)&(Z));

  

//Display Decoder

a=(!D&!C&!B&A)|(!D&C&!B&!A);
b=(!D&C&!B&A)|(!D&C&B&!A);
c=(!D&!C&B&!A);
d=(!D&!C&!B&A)|(!D&C&!B&!A)|(!D&C&B&A);
e=(!D&!C&!B&A)|(!D&!C&B&A)|(!D&C&!B&!A)|(!D&C&!B&A)|(!D&C&B&A)|(D&!C&!B&A);
f=(!D&!C&!B&A)|(!D&!C&B&!A)|(!D&!C&B&A)|(!D&C&B&A);
g=(!D&!C&!B&!A)|(!D&!C&!B&A)|(!D&C&B&A);

end
endmodule
//end of the module









