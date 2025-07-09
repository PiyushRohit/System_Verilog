# Verilog
# Verilog Projects Repository

Welcome to my Verilog repository! This repo contains all my Verilog HDL (Hardware Description Language) codes, ranging from basic digital logic modules to complete mini-projects. It's intended for learning, experimentation, and showcasing my digital design work.

## 🔧 Tools Used

- **Icarus Verilog** – Simulation
- **GTKWave** – Waveform viewing
- **ModelSim** – Alternative simulation
- **Vivado / Quartus** – FPGA Synthesis (optional)
- **VS Code** – Code editing with Verilog extensions


  ## ▶️ How to Run (Simulation)

1. Install Icarus Verilog and GTKWave
2. Navigate to a project folder:
    ```bash
    cd projects/alu_8bit
    ```
3. Compile and simulate:
    ```bash
    iverilog -o alu_tb alu_8bit.v testbench.v
    vvp alu_tb
    gtkwave dump.vcd
    ```

---


