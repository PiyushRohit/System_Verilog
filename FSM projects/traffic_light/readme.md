🚦 Cyclic Lamp Controller in Verilog
This repository contains a simple Verilog project that simulates a cyclic lamp controller, which sequentially turns on red, green, and yellow lights — similar to a basic traffic light system.

📁 Files Included
cyclic_lamp.v — The Verilog module that defines the cyclic lamp logic.

cyclic_lamp_tb.v — The testbench used to simulate and verify the lamp controller behavior.

lamp.vcd — Generated during simulation (used for waveform viewing with tools like GTKWave).

🎯 Purpose
The purpose of this project is to demonstrate:

Finite State Machine (FSM) implementation using Verilog

Use of state transitions based on clock edges

Practical use-case: modeling a simple traffic light system

This example is great for beginners learning digital design and state machines.

⚙️ How It Works
The cyclic_lamp module cycles through three light states on each rising edge of the clock:

State	Light Output	Binary
s0	Red	100
s1	Green	010
s2	Yellow	001

✅ State Transition Logic
On each positive edge of the clock, the module moves to the next state in the order:
Red → Green → Yellow → Red → ...

The light output reflects the current state using a 3-bit binary code:

Red: 3'b100

Green: 3'b010

Yellow: 3'b001

📊 Simulation
The testbench (cyclic_lamp_tb.v) creates a clock signal and runs the simulation. It:

Toggles the clock every 5 time units

Runs the simulation for 60 time units

Dumps waveform data to lamp.vcd

Prints current light values to the console using $monitor

To simulate and view waveform:

bash

iverilog -o lamp_sim cyclic_lamp.v cyclic_lamp_tb.v
vvp lamp_sim
gtkwave lamp.vcd


🧠 Learning Outcomes
Basics of sequential circuits in Verilog

Implementing and simulating FSMs

Understanding clocked behavior and output control

🛠 Tools Used
Icarus Verilog (for simulation)

GTKWave (for waveform viewing)

📬 Feedback
If you find this helpful or want to contribute improvements, feel free to fork or open a pull request. Happy coding!

