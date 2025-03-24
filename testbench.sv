// Code your testbench here
// or browse Examples
module tb;
  reg din;
  reg [1:0] sel;
  wire y0;
  wire y1;
  wire y2;
  wire y3;
  demux4to1 uut(
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
  );
  
  initial begin
    $monitor ("din=%b, sel=%b--> y0=%b,y1=%b,y2=%b,y3=%b",din,sel,y0,y1,y2,y3);
    din = 1; sel = 2'b00; #10; 
    din = 1; sel = 2'b01; #10; 
    din = 1; sel = 2'b10; #10; 
    din = 1; sel = 2'b11; #10; 
    din = 0; sel = 2'b10; #10; 
    $finish;
  end
endmodule
    
