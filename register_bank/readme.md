# Register Bank in Verilog

This project implements a 32x32-bit **Register Bank** in Verilog, along with a **testbench** to simulate and verify its functionality.

## 🧠 Description

The register bank contains 32 registers, each 32 bits wide. It allows:
- Simultaneous reading from two registers (`rddata1`, `rddata2`)
- Writing to one register (`dr`) when the `write` signal is high
- Resetting all registers to zero when `reset` is asserted

### Key Features
- 2 Read Ports (combinational)
- 1 Write Port (synchronous)
- Reset logic to clear all registers
- Fully synthesizable

## 🗂️ Files Included

- `reg_bank.v` – Verilog module for the 32x32 Register Bank  
- `reg_bank_tb.v` – Testbench to simulate writing to and reading from the register bank  
- `reg_bank.vcd` – Waveform dump file generated from simulation (optional)

## 🔧 How It Works

### Inputs:
- `clk` (Clock)
- `reset` (Active-high reset)
- `write` (Write enable)
- `wrdata` (32-bit write data)
- `dr` (5-bit destination register address)
- `sr1`, `sr2` (5-bit source register addresses)

### Outputs:
- `rddata1`, `rddata2` (32-bit outputs from registers `sr1` and `sr2`)

### Behavioral Summary:
- On `reset`, all 32 registers are cleared.
- On `write = 1` at `posedge clk`, `wrdata` is written to the register at address `dr`.
- At all times, the contents of registers `sr1` and `sr2` are available at `rddata1` and `rddata2`.

## ▶️ Simulation Instructions

You can use any Verilog simulator like **Icarus Verilog**, **ModelSim**, or **Vivado**. Here's how to run it using **Icarus Verilog**:

```bash
iverilog -o reg_bank.vvp reg_bank.v reg_bank_tb.v
vvp reg_bank.vvp
gtkwave reg_bank.vcd