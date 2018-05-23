# VGA Timing Controller

### Author
- Jay Patel

### Abstract 
The goal of this project is to implement a circuit that generates video signal for a specific display format shown below, and output it to a video display, using the VGA connector on the Digilent Basys3 board. 
![Specifications](https://raw.githubusercontent.com/jbp261/VGA-Timing-Controller/master/VGA%20Specifications.png "Specifications")
### Equipment
- Digilent Basys3 board (Xilinx Artix 7 FPGA)
![FPGA Board](https://raw.githubusercontent.com/jbp261/Digital-and-Analog-Clock-using-FPGA/master/Digilent_Basys-3.jpg "FPGA Board")

### Environment
- Xilinx Vivado 2016.2 Webpack Edition

### Theory Topics
- FPGA Design and Programming using Verilog-HDL

### File Description 
- testbench.v (top level testbench)
- tiff_writer.v (simulation display capture, sub-module used by testbench)
- vga_example.v (top level design, contains timing controller and test pattern generator)
- vga_example.xdc (top level design constraint file)
- vga_timing.v (timing controller, sub-module used by vga_example)

### Example
The achived VGA output screen with given specification is shown below. 
![Frame000](https://raw.githubusercontent.com/jbp261/VGA-Timing-Controller/master/frame000.png "Frame000")

### Referance
- [EE178 Class Website](http://www.eric.crabill.org/ "EE178 Class Website")
- [Link to all project files needed to test the project in Vivado IDE](https://drive.google.com/file/d/0Byyvt5GT36rpUzc5LXBrNnlqQ1U/view?usp=sharing "Link to all project files needed to test the project in Vivado IDE")

