module  tb_bnb;
                    
    wire            q0          ;
    wire            q1  	       ;
    
    reg             d           ;
    reg             clk         ;
    
    initial         clk = 1'b0  ;
    
    always #(100)   clk = ~clk  ;
    
    block        dut_0(      .q      (   q0       ),
                             .d      (   d       ),
                             .clk    (   clk     ));
                          
    nonblock     dut_1(      .q      (   q1       ),
                             .d      (   d       ),
                             .clk    (   clk     ));
                             
    initial begin
    $display("==========================================");
    $display("  d   q0    q1");
    $display("==========================================");
    #(50)   d = $random;   #(50)   $display("  %b\t%b", d, q0, q1);
    #(50)   d = $random;   #(50)   $display("  %b\t%b", d, q0, q1);
    #(50)   d = $random;   #(50)   $display("  %b\t%b", d, q0, q1);
    #(50)   d = $random;   #(50)   $display("  %b\t%b", d, q0, q1);
    #(50)   d = $random;   #(50)   $display("  %b\t%b", d, q0, q1);
    #(50)   d = $random;   #(50)   $display("  %b\t%b", d, q0, q1);
    #(50)   d = $random;   #(50)   $display("  %b\t%b", d, q0, q1);
    #(50)   d = $random;   #(50)   $display("  %b\t%b", d, q0, q1);
    $finish;
    end
  
endmodule

//----------------------------------------------------------------------------- 

`timescale 1ns/1ns

module tb_cnt;
  
    parameter tCK = 1000/50 ; // 50MHz Clock

    reg clk ; 
    reg rst_n ; 

    wire [5:0] out ;

    initial clk = 1'b0; 

    always #(tCK/2) clk = ~clk;


    cnt6  dut(    .out    ( out   ), 
                  .clk    ( clk   ), 
                  .rst_n  ( rst_n ));

    initial begin 
    #(0*tCK)              rst_n = 1'b0; 
    #(1*tCK)              rst_n = 1'b1; 
    #(100*tCK)            $finish; 
    end
    
endmodule

//-----------------------------------------------------------------------------

module tb_top_cnt;
  
    parameter         tCK = 1000/50 ; // 50MHz Clock

    reg               clk ; 
    reg               rst_n ;

    wire    [5:0]     out       ;

    initial           clk = 1'b0; 

    always  #(tCK/2)  clk = ~clk;

    top_cnt   dut   ( .out  	 ( out          ), 
                      .num    ( 32'd50000000 ), 
                      .clk    ( clk          ), 
                      .rst_n  ( rst_n   	    )); 

    initial begin 
        #(0*tCK) rst_n = 1'b0; 
        #(1*tCK) rst_n = 1'b1; 
        #(100000000*tCK) $finish; 
    end

endmodule