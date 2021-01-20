
module top (    
             
                input reset,
                input p,
                output blink
                output q
              
                );



assign blink= reset ? 1'd0: 1'd1;

endmodule  
