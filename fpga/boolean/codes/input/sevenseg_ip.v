/*Function for driving a seven segment display through 
a decimal input
January 19,2021
Code by G V V Sharma
Released under GNU GPL
*/

//declaring the blink module
module helloworldfpga(

input  W,
input  X,
input  Y,
input  Z,
output wire a,
output wire b,
output wire c,
output wire d,
output wire e,
output wire f,
output wire g

);

initial

begin
A <= 1;
B <=0;
C <=1;
D <=0;
end


//reg A, B, C, D;

always @*
begin
/*  A <=W;
  B <=X;
  C <=Y;
  D <=Z;
*/
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









//begin function takes decimal input and gives seven segment output
//function automatic [6:0] gpio_out;

/*reg [6:0] gpio_out;

always @*
begin

if(D == 0 && C == 0 && B == 0 && A == 0 )

	begin
		gpio_out = 7'b0000001;
	end

else if(D == 0 && C == 0 && B == 0 && A == 1 )
	begin
		gpio_out = 7'b1001111;
	end

else if(D == 0 && C == 0 && B == 1 && A == 0 )
	begin
		gpio_out = 7'b0010100;
	end

else if(D == 0 && C == 0 && B == 1 && A == 1 )
	begin
		gpio_out = 7'b0000110;
	end

else if(D == 0 && C == 1 && B == 0 && A == 0 )
	begin
		gpio_out = 7'b1001100;
	end

else if(D == 0 && C == 1 && B == 0 && A == 1 )
	begin
		gpio_out = 7'b0100100;
	end

else if(D == 0 && C == 1 && B == 1 && A == 0 )
	begin
		gpio_out = 7'b0100000;
	end

else if(D == 0 && C == 1 && B == 1 && A == 1 )
	begin
		gpio_out = 7'b0001111;
	end

else if(D == 1 && C == 0 && B == 0 && A == 0 )
	begin
		gpio_out = 7'b0000000;
	end

else if(D == 1 && C == 0 && B == 0 && A == 1 )
	begin
		gpio_out = 7'b0000100;
	end

else
	begin
		gpio_out = 7'b1111111; 
	end

end
*/
//endfunction
//end function

//display number
//assign {a, b,c,d,e,f,g}=gpio_out(3);
//assign {a, b,c,d,e,f,g}=gpio_out[6:0];
