module traffic_light(
  input clk, rst,
  output reg Orange1, Green1, Red1, // Direction 1
  output reg Orange2, Green2, Red2, // Direction 2
  output reg Orange3, Green3, Red3, // Direction 3
  output reg Orange4, Green4, Red4  // Direction 4
);
reg [7:0] Time;
always @(posedge clk or posedge rst) begin
  if (rst)
    Time <= 0;
  else if (Time >= 120)
    Time <= 0;
  else
    Time <= Time + 1;
end

always @(posedge clk or posedge rst) begin
  if (rst)
    begin
      Red1 <= 1; Orange1 <= 0; Green1 <= 0;
      Red2 <= 1; Orange2 <= 0; Green2 <= 0;
      Red3 <= 1; Orange3 <= 0; Green3 <= 0;
      Red4 <= 1; Orange4 <= 0; Green4 <= 0;
    end
  else
    begin
      Red1 <= Red1; Orange1 <= Orange1; Green1 <= Green1;
      Red2 <= Red2; Orange2 <= Orange2; Green2 <= Green2;
      Red3 <= Red3; Orange3 <= Orange3; Green3 <= Green3;
      Red4 <= Red4; Orange4 <= Orange4; Green4 <= Green4;
    end
  case (Time)
    0: begin
      Red1 <= 0; Orange1 <= 1; Green1 <= 0;
      Red2 <= 1; Orange2 <= 0; Green2 <= 0;
      Red3 <= 1; Orange3 <= 0; Green3 <= 0;
      Red4 <= 1; Orange4 <= 0; Green4 <= 0;
    end
    5: begin
      Red1 <= 0; Orange1 <= 0; Green1 <= 1;
      Red2 <= 1; Orange2 <= 0; Green2 <= 0;
      Red3 <= 1; Orange3 <= 0; Green3 <= 0;
	  Red4 <= 1; Orange4 <= 0; Green4 <= 0;
    end
    30: begin
      Red1 <= 1; Orange1 <= 0; Green1 <= 0;
      Red2 <= 0; Orange2 <= 1; Green2 <= 0;
      Red3 <= 1; Orange3 <= 0; Green3 <= 0;
      Red4 <= 1; Orange4 <= 0; Green4 <= 0;
    end
    35: begin
      Red1 <= 1; Orange1 <= 0; Green1 <= 0;
      Red2 <= 0; Orange2 <= 0; Green2 <= 1;
      Red3 <= 1; Orange3 <= 0; Green3 <= 0;
      Red4 <= 1; Orange4 <= 0; Green4 <= 0;
    end
    60: begin
      Red1 <= 1; Orange1 <= 0; Green1 <= 0;
      Red2 <= 1; Orange2 <= 0; Green2 <= 0;
      Red3 <= 0; Orange3 <= 1; Green3 <= 0;
      Red4 <= 1; Orange4 <= 0; Green4 <= 0;
    end 
    65: begin
      Red1 <= 1; Orange1 <= 0; Green1 <= 0;
      Red2 <= 1; Orange2 <= 0; Green2 <= 0;
      Red3 <= 0; Orange3 <= 0; Green3 <= 1;
      Red4 <= 1; Orange4 <= 0; Green4 <= 0;
    end
    90: begin
      Red1 <= 1; Orange1 <= 0; Green1 <= 0;
      Red2 <= 1; Orange2 <= 0; Green2 <= 0;
      Red3 <= 1; Orange3 <= 0; Green3 <= 0;
      Red4 <= 0; Orange4 <= 1; Green4 <= 0;
    end
    95: begin
      Red1 <= 1; Orange1 <= 0; Green1 <= 0;
      Red2 <= 1; Orange2 <= 0; Green2 <= 0;
      Red3 <= 1; Orange3 <= 0; Green3 <= 0;
      Red4 <= 0; Orange4 <= 0; Green4 <= 1;
    end
  endcase
end
endmodule
