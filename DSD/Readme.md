###Parallel to Serial Converter for 8-Point FFT  
### **Efficiently Convert Parallel FFT Output to Serial Data Using Verilog HDL**  

![Verilog](https://img.shields.io/badge/Verilog-HDL%20Design-blue)  
![FPGA](https://img.shields.io/badge/FPGA-SP601-orange)  
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)  

---

## 📌 **Project Overview**  
This project implements a **Parallel-to-Serial Converter (PISO)** to serialize the **8-bit parallel output** of an **8-point Fast Fourier Transform (FFT)**. The design ensures efficient data conversion for further processing or transmission.  

- **Designed in:** Verilog HDL  
- **Simulated in:** ModelSim / Xilinx Vivado  
- **Target FPGA:** SP601  
- **Key Features:**  
  - High-speed serialization  
  - Reset & Load functionality  
  - FPGA-ready design  

---

## 📜 **How It Works**  
### **PISO Architecture**  
The converter consists of:  
- **Shift Register:** Stores the 8-bit FFT output.  
- **Load Signal:** Captures parallel data before shifting.  
- **Clocked Operation:** Transmits data **bit-by-bit** per clock cycle.  
- **Reset Mechanism:** Ensures a clean state before each operation.  

---

### **Inputs & Outputs**  
| **Signal**       | **Direction** | **Description**                          |
|------------------|---------------|------------------------------------------|
| `clk`            | Input         | Clock signal for synchronization.        |
| `reset`          | Input         | Active-high reset (clears internal states). |
| `parallel_in`    | Input         | 8-bit parallel FFT output.               |
| `load`           | Input         | Latches parallel data into the shift register. |
| `serial_out`     | Output        | Serialized bit-by-bit data output.       |
