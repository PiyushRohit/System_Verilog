# Procedural Block Examples – Verilog

This folder contains two Verilog modules and their testbenches demonstrating the differences between **blocking (`=`)** and **non-blocking (`<=`)** assignments in procedural blocks (`initial` and `always`).

---

## 📁 Files Included

procedural_block/
├── blocking.v # Blocking assignment example
├── blocking_tb.v # Testbench for blocking module
├── nonblocking.v # Non-blocking assignment example
├── nonblocking_tb.v # Testbench for non-blocking module


---

## 🔧 How to Simulate

You can use **Icarus Verilog** to simulate the modules and **GTKWave** to view the waveform.

### 🧪 Run Simulation

```bash
# For blocking module
iverilog -o blocking_tb.vvp blocking.v blocking_tb.v
vvp blocking_tb.vvp

# For non-blocking module
iverilog -o nonblocking_tb.vvp nonblocking.v nonblocking_tb.v
vvp nonblocking_tb.vvp
