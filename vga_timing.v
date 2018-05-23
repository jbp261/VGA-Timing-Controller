// File: vga_timing.v
// This is the vga timing design for EE178 Lab #4.

// The `timescale directive specifies what the
// simulation time units are (1 ns here) and what
// the simulator time step should be (1 ps here).

`timescale 1 ns / 1 ps

// Declare the module and its ports. This is
// using Verilog-2001 syntax.

module vga_timing (
  output wire [10:0] vcount,
  output wire vsync,
  output wire vblnk,
  output wire [10:0] hcount,
  output wire hsync,
  output wire hblnk,
  input wire pclk
  );


//Horizontl  
wire htc;
reg [10:0] hcount1 = 0;
assign hcount = hcount1;

always @ (posedge pclk)
    begin
        if(htc)
        begin 
            hcount1 <= 0;
        end
        else
        begin
            hcount1 <= hcount1 + 1;
        end
    end
assign hc = (hcount1 == 1055);
assign hsync = ((hcount1 >= 840) && (hcount1 <= 967));
assign hblnk = (hcount1 >= 800);

//Verticle
wire vtc;
reg [10:0] vcount1 = 0;
assign vcount = vcount1;
always @ (posedge pclk)
    begin
        if(htc)
        begin 
            if(vtc)
                vcount1 <= 0;
            else 
                vcount1 <= vcount1 + 1;
         end   
     end
assign vtc = (vcount1 == 627);
assign vsync = (vcount1 > 600) && (vcount1 <= 604);
assign vblnk = ((vcount1 >= 600));



  // Describe the actual circuit for the assignment.
  // Video timing controller set for 800x600@60fps
  // using a 40 MHz pixel clock per VESA spec.

endmodule
