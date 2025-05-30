module traffic_light_tb();
  reg clk,rst;
  wire Orange1,Green1,Red1;
  wire Orange2,Green2,Red2;
  wire Orange3,Green3,Red3;
  wire Orange4,Green4,Red4;
  traffic_light TLC(clk,rst,Orange1,Green1,Red1,Orange2,Green2,Red2,Orange3,Green3,Red3,Orange4,Green4,Red4);
  
  initial
    begin
      $dumpfile("trafficlight.vcd");
      $dumpvars(0,traffic_light_tb);
    end
  initial begin
    $display("Time\tD1(R O G)\tD2(R O G)\tD3(R O G)\tD4(R O G)");
    $monitor("%0t\t%b %b %b\t%b %b %b\t%b %b %b\t%b %b %b",
      $time,
      Red1, Orange1, Green1,
      Red2, Orange2, Green2,
      Red3, Orange3, Green3,
      Red4, Orange4, Green4
    );
  end
  initial
    begin
      clk = 0;
      forever #5 clk = ~clk;
    end
  initial
    begin
      rst = 1;
      #10;
      rst = 0;
      #1000;
      $finish;
    end
endmodule
  
  
