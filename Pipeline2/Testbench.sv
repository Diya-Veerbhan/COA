// Code your testbench here
module mypipe2_test;
  wire [15:0] Z; //output can be wire
  reg [3:0] rs1, rs2, rd, func;
  reg [7:0] addr;
  reg clk1, clk2;
  integer k;
  //Instantiation of the module- --making connections, the sequence of mentioning the variables should be same as declared in the module of design
  mypipe2 MYPIPE (Z, rs1, rs2, rd, func, addr, clk1, clk2);
  initial
    begin
      clk1=0;clk2=0;
      repeat (20)
        begin 
          #5 clk1=1; #5 clk1=0;//Generating two phase clock
          #5 clk2=1;#5 clk2=0;
        end
    end
  
  initial 
    for (k=0; k<16; k++)
      mypipe2.regbank[k]=k ;//Initializing the variables
  
  initial
    begin
     #5 rs1=3;rs2=5;rd=10;func=0;addr=125;//
     #20 rs1=3;rs2=8;rd=12;func=2;addr=126;//
     #20 rs1=10;rs2=5;rd=14;func=1;addr=127;//
     #20 rs1=7;rs2=3;rd=13;func=11;addr=128;//
     #20 rs1=10;rs2=5;rd=15;func=1;addr=129;//
     #20 rs1=12;rs2=13;rd=16;func=0;addr=130;//
     
      #60 for(k=125; k<131; k++)
        $display ("Mem[%d] = %d", k, mypipe2.mem[k]);
    end
 initial
   begin
     $monitor ("Time = %d, Z = %3d" , $time, Z);
     #300 $finish;
   end
  
endmodule
