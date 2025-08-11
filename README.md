# Dadda 8-bit High-Speed Low-Power Multiplier 
This project implements an 8-bit Dadda multiplier architecture optimized for high-speed and low-power operation. The Dadda algorithm is an efficient parallel multiplier design that minimizes the number of partial product reduction stages, resulting in faster computation with reduced hardware complexity. 
The design focuses on low power consumption and high-speed operation, making it suitable for System-on-Chip (SoC) and AI acceleration applications.
The design was synthesized, implemented, and analyzed using Xilinx Vivado 2018.1.
#  Design Flow
-HDL Coding – Verilog description of the multiplier.
-RTL Analysis – Verification of schematic and logic structure.
-Synthesis – Mapping RTL to FPGA LUTs and I/O resources.
-Implementation – Placement and routing of design.
-Power & Utilization Analysis – Detailed FPGA resource and power usage estimation.
-Technology Node Comparison – Power/area trade-offs for 180nm, 90nm, and 45nm.

# 4-bit Multiplier Schematic
![4-bit Multiplier Schematic](4_bit_sch.png)

# 8-bit Multiplier Schematic
![4-bit Multiplier Schematic](8_bit.png)

# 4-bit Multiplier Power Analysis
![4-bit Multiplier Schematic](4pa.png)

# 8-bit Multiplier Power Analysis
![4-bit Multiplier Schematic](8pa.png)
