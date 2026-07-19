# 16-bit-RISC-Processsor-
A 16-bit RISC processor designed in Verilog HDL featuring a modular datapath, ALU, register file, instruction decoder, control unit, program counter, and memory module. Developed and simulated using Xilinx Vivado.
# 16-bit RISC Processor in Verilog

## Overview

This project implements a custom **16-bit Reduced Instruction Set Computer (RISC) Processor** using **Verilog HDL**. The processor is designed with a modular architecture, where each functional block is implemented as an independent hardware module. The design was developed and simulated using **Xilinx Vivado**.

The processor demonstrates the fundamental concepts of processor design, including instruction decoding, arithmetic and logic operations, register file access, program counter control, and memory interfacing.

---

## Features

- 16-bit processor architecture
- Modular Verilog implementation
- Arithmetic Logic Unit (ALU)
- Register File (8 × 16-bit Registers)
- Instruction Decoder
- Control Unit
- Program Counter
- Memory Module for instruction/data storage
- Clock-driven sequential operation
- Designed and simulated in Xilinx Vivado

---

## Project Structure

```
16-bit-RISC-Processor/
│
├── README.md
├── LICENSE                 # Optional
├── .gitignore
│
├── src/
│   ├── 16bit_risc.v        # Top-level processor module
│   ├── alu_unit.v          # Arithmetic Logic Unit
│   ├── bit_risc.v          # Instruction decoder / datapath module
│   ├── ctrl_unit.v         # Control Unit
│   ├── fake_ram.v          # Instruction/Data Memory
│   ├── pc_unit.v           # Program Counter
│   └── reg_unit.v          # Register File
│
├── testbench/
│   ├── bit_risc_tb.v
│   ├── reg_unit_tb.v
│   └── main_test_tb.v
│
├── simulation/
│   └── main_test.v         # Simulation stimulus/program
│
└── screenshots/
    ├── rtl_schematic.png
    ├── waveform.png
    └── synthesis.png
```

---

## Module Description

### Top Module
Integrates all processor components and manages communication between the datapath and control logic.

### ALU
Performs arithmetic and logical operations based on the decoded instruction opcode.

### Instruction Decoder
Extracts opcode, source registers, destination register, immediate values, and control information from the 16-bit instruction.

### Register File
Implements an 8-register, 16-bit register bank supporting read and write operations.

### Control Unit
Implements a finite-state machine (FSM) that sequences the processor through instruction fetch, decode, execution, register write-back, and memory access.

### Program Counter
Maintains the current instruction address and supports sequential execution and branching operations.

### Memory Module
Implements a simple RAM model initialized with sample instructions for simulation.

---

## Tools Used

- Verilog HDL
- Xilinx Vivado

---

## Future Improvements

- Five-stage pipelined architecture
- Hazard Detection Unit
- Data Forwarding
- Branch Prediction
- Data Memory and Load/Store Instructions
- Expanded Instruction Set
- FPGA Implementation

---

## Author

Ashmit Singh
