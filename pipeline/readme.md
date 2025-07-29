# 4-Stage Pipelined Processor in Verilog

This project implements a simple **4-stage pipelined processor** using Verilog HDL. The processor supports basic arithmetic and logical operations, and writes the final result into memory. It also includes a testbench to simulate and verify the pipeline behavior.

---

## 🧠 Pipeline Architecture

The processor is divided into **four stages**, each triggered by alternating clock signals (`clk1` and `clk2`):

| Stage | Clock Trigger | Description                             |
|-------|---------------|-----------------------------------------|
| 1     | posedge clk1   | Fetch operands and control signals      |
| 2     | negedge clk2   | Execute ALU operations                  |
| 3     | posedge clk1   | Write result to register bank           |
| 4     | negedge clk2   | Write result to memory                  |

---

## ✅ Supported Operations

The processor supports the following 4-bit function codes:

| Func Code | Operation       | Description                        |
|-----------|-----------------|------------------------------------|
| 0         | ADD             | `A + B`                             |
| 1         | SUB             | `A - B`                             |
| 2         | MUL             | `A * B`                             |
| 3         | MOV A           | Move operand A                     |
| 4         | MOV B           | Move operand B                     |
| 5         | AND             | Bitwise AND                        |
| 6         | OR              | Bitwise OR                         |
| 7         | XOR             | Bitwise XOR                        |
| 8         | NEG A           | Negate A                           |
| 9         | NEG B           | Negate B                           |
| 10        | SHR             | Shift A right by 1                 |
| 11        | SHL             | Shift A left by 1                  |

---

## 📁 File Structure

pipeline/
│
├── pipeline.v # Main pipeline processor module
├── tb.v # Testbench for the processor
├── pipeline.vcd # Generated waveform file (after simulation)
└── README.md # Project documentation


---

## 🧪 How to Simulate

You can simulate the design using any Verilog simulator. Below is an example using **Icarus Verilog** and **GTKWave**.

### Step 1: Compile

iverilog -o pipeline.vvp pipeline.v tb.v


### Step 2: Run Simulation

vvp pipeline.vvp

### step 3: View Waveform

gtkwave pipeline.vcd

