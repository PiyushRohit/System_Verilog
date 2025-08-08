# Booth's Algorithm Implementation in Verilog

## 📌 Overview
This project implements **Booth’s Algorithm** for binary multiplication in **Verilog**.  
Booth's Algorithm is an efficient method for multiplying signed binary numbers in two's complement form.  
The design is modular, consisting of datapath elements and a controller for sequencing operations.

The implementation is simulation-ready using **Icarus Verilog** and waveform viewing with **GTKWave**.

---

## 🛠 Features
- Modular design:
  - **Datapath Modules**: Shift registers, ALU, counter, D flip-flop, PIPO register.
  - **Controller Module**: FSM-based control of the multiplication steps.
- Supports **signed binary multiplication**.
- Fully synthesizable and simulation-friendly.
- Testbench ready for waveform analysis.

---

## 📂 Project Structure
├── booth.v # Datapath modules (ShiftReg, ALU, Counter, etc.)
├── controller.v # FSM-based controller for Booth's algorithm
├── README.md # Project documentation



---

## 📐 Algorithm Steps
Booth's Algorithm works as follows:
1. Load multiplicand (M) and multiplier (Q).
2. Examine the least significant bit (Q₀) and the previous Q₋₁ bit.
3. If `Q₀ Q₋₁ = 01` → **Add** multiplicand to A.
4. If `Q₀ Q₋₁ = 10` → **Subtract** multiplicand from A.
5. Perform an **arithmetic right shift**.
6. Repeat for the number of bits in the multiplier.
7. Concatenate A and Q to get the final product.

---

## 🚀 Simulation & Usage

### **1. Requirements**
- **Icarus Verilog** – to compile and run simulations
- **GTKWave** – to view waveforms
- Python 3 (optional, for automated script)





