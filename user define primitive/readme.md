User-Defined Primitives (UDP) Examples in Verilog
This repository contains basic examples of User-Defined Primitives (UDP) implemented in Verilog. UDPs are used to define combinational and sequential logic behavior at a lower abstraction level using truth tables.

📁 Contents
This folder includes the following Verilog UDP examples:

JK Flip-Flop (jk_ff.v)
A sequential primitive demonstrating the behavior of a JK flip-flop using edge-sensitive control.

D Latch (d_latch.v)
A level-sensitive primitive showing the operation of a D-type latch with enable.

T Flip-Flop (t_ff.v)
A sequential primitive that toggles its state on each clock edge when T is high.

🛠 Requirements
Verilog simulator (such as Icarus Verilog, ModelSim, or Vivado)

Basic understanding of Verilog syntax and UDP structure

📄 File Naming Convention
Each file is named after the type of flip-flop or latch it contains. The structure includes:

Definition of the UDP using the primitive keyword

A simple testbench  in a separate file 