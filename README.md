# Software Engineering Verilog Labworks

## Introduction to Verilog

Verilog is a hardware description language (HDL) used to model and design digital electronic systems. It enables engineers to describe circuits and systems at various abstraction levels, from simple gates to complex processors. Unlike traditional programming languages that run on computers, Verilog is used to design and simulate hardware behavior.

## Key Concepts

- **Variables in Verilog:**
  - `reg`: Represents variables that can hold values and be assigned inside procedural blocks.
  - `wire`: Represents connections between hardware elements and continuous assignments.
  - `integer`, `parameter`, and others provide additional data types.

- **File Formats:**
  Verilog code is written in plain text files with the extension `.v` (for Verilog) or `.sv` (for SystemVerilog). Both design modules and testbenches typically use these formats.

## Uses of Verilog

- Modeling digital logic circuits such as adders, multiplexers, counters, and CPUs.
- Simulating and verifying hardware designs before physical implementation.
- Synthesis of designs onto FPGAs and ASICs.

## Design Modules and Testbenches

- **Design Module:** Contains the actual hardware logic (e.g., adders, subtractors). It defines inputs, outputs, and the internal behavior or structure.
- **Testbench:** A separate module used for simulation that tests the design module by providing inputs and monitoring outputs. It helps verify correctness by simulating real-world scenarios.

## Other Important Information

- Verilog uses **procedural blocks** (`always`, `initial`) to describe behavior.
- Simulation timing is important — delays (like `#3`) help model time passing in tests.
- Waveform dump files (`.vcd`) can be generated for detailed signal analysis.
- Learning Verilog strengthens understanding of both hardware and low-level software design.

---

This repo contains lab assignments for practicing Verilog design and testbench coding, focusing on basic arithmetic circuits such as adders and subtractors.

