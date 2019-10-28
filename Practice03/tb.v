module tb_2to1        ;
    
    reg     in0       ;
    reg     in1       ;
    reg     sel       ;
    
    wire    out0        ;
    
    wire    out1        ;
    
    wire    out2        ;
    
    mux2to1_cond     dut_1(    .out  ( out0    ),
                               .in0  ( in0     ),
                               .in1  ( in1     ),
                               .sel  ( sel     ))    ;
                              
    mux2to1_if       dut_2(    .out  ( out1    ),
                               .in0  ( in0     ),
                               .in1  ( in1     ),
                               .sel  ( sel     ))    ;
                              
    mux2to1_case     dut_3(    .out  ( out2    ),
                               .in0  ( in0     ),
                               .in1  ( in1     ),
                               .sel  ( sel     ))    ;
                               
    
    initial begin
      $display("======================================================");
      $display(" sel  in1    in0     out0    out1    out2");
      $display("======================================================");
      #(50)     {sel, in1, in0} = 3'b000;     #(50)     $display("  %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
      #(50)     {sel, in1, in0} = 3'b001;     #(50)     $display("  %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
      #(50)     {sel, in1, in0} = 3'b010;     #(50)     $display("  %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
      #(50)     {sel, in1, in0} = 3'b011;     #(50)     $display("  %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
      #(50)     {sel, in1, in0} = 3'b100;     #(50)     $display("  %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
      #(50)     {sel, in1, in0} = 3'b101;     #(50)     $display("  %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
      #(50)     {sel, in1, in0} = 3'b110;     #(50)     $display("  %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
      #(50)     {sel, in1, in0} = 3'b111;     #(50)     $display("  %b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
      #(50)     $finish                 ;
    end
    
endmodule

//----------------------------------------------------------------------------------------------------------------------------------------

module tb_4to1        ;
    
    reg               in0       ;
    reg               in1       ;
    reg               in2       ;
    reg               in3       ;
    reg     [1:0]     sel       ;
    
    wire              out0        ;
    wire              out1        ;
    wire              out2        ;
    
    mux4to1_inst     dut_1(    .out  ( out0    ),
                               .in0  ( in0     ),
                               .in1  ( in1     ),
                               .in2  ( in2     ),
                               .in3  ( in3     ),
                               .sel  ( sel     ))    ;
    mux4to1_if       dut_2(    .out  ( out1    ),
                               .in0  ( in0     ),
                               .in1  ( in1     ),
                               .in2  ( in2     ),
                               .in3  ( in3     ),
                               .sel  ( sel     ))    ;
    mux4to1_case     dut_3(    .out  ( out2    ),
                               .in0  ( in0     ),
                               .in1  ( in1     ),
                               .in2  ( in2     ),
                               .in3  ( in3     ),
                               .sel  ( sel     ))    ;
    initial begin
      $display("==========================================================================");
      $display(" sel[1]  sel[0]  in3    in2    in1    in0     out0    out1    out2");
      $display("==========================================================================");
      #(50)   {sel[1], sel[0], in3, in2, in1, in0} = 6'b000000;     #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
      #(50)   {sel[1], sel[0], in3, in2, in1, in0} = 6'b010001;     #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
      #(50)   {sel[1], sel[0], in3, in2, in1, in0} = 6'b100010;     #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
      #(50)   {sel[1], sel[0], in3, in2, in1, in0} = 6'b110011;     #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
      #(50)   {sel[1], sel[0], in3, in2, in1, in0} = 6'b000100;     #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
      #(50)   {sel[1], sel[0], in3, in2, in1, in0} = 6'b010101;     #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
      #(50)   {sel[1], sel[0], in3, in2, in1, in0} = 6'b100110;     #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
      #(50)   {sel[1], sel[0], in3, in2, in1, in0} = 6'b110111;     #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
      #(50)   $finish                 ;
    end
endmodule

//----------------------------------------------------------------------------------------------------------------------------------------

module tb_dec3to8     ;
    
    reg     [2:0]   in      ;
    reg       	   	 en      ;
    
    wire    [7:0]   out0    ;
    
    wire    [7:0]   out1    ;
    
    dec3to8_shift dut_0(    .out    ( out0    ),
                            .in     ( in      ),
                            .en     ( en      ));
                      
    dec3to8_case dut_1(     .out    ( out1    ),
                            .in     ( in      ),
                            .en     ( en      ));
                      
    initial begin
      $display("======================================================");
      $display(" in[2]  in[1]    in[0]     out0         out1");
      $display("======================================================");
      en = 1'b1  ;
      #(50)     in = 3'b000;     #(50)     $display("  %b\t%b\t%b\t%b\t%b", in[2], in[1], in[0], out0, out1);
      #(50)     in = 3'b001;     #(50)     $display("  %b\t%b\t%b\t%b\t%b", in[2], in[1], in[0], out0, out1);
      #(50)     in = 3'b010;     #(50)     $display("  %b\t%b\t%b\t%b\t%b", in[2], in[1], in[0], out0, out1);
      #(50)     in = 3'b011;     #(50)     $display("  %b\t%b\t%b\t%b\t%b", in[2], in[1], in[0], out0, out1);
      #(50)     in = 3'b100;     #(50)     $display("  %b\t%b\t%b\t%b\t%b", in[2], in[1], in[0], out0, out1);
      #(50)     in = 3'b101;     #(50)     $display("  %b\t%b\t%b\t%b\t%b", in[2], in[1], in[0], out0, out1);
      #(50)     in = 3'b110;     #(50)     $display("  %b\t%b\t%b\t%b\t%b", in[2], in[1], in[0], out0, out1);
      #(50)     in = 3'b111;     #(50)     $display("  %b\t%b\t%b\t%b\t%b", in[2], in[1], in[0], out0, out1);
      #(50)     $finish                 ;
    end
    
endmodule