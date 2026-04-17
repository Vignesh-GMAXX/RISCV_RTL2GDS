# RISCV_RTL2GDS

Main project repository for a complete RISC-V implementation journey across three major folders:

1. Cadence_Files
2. RTL_FPGA
3. RTL_to_GDS

This README is the root-level project document and explains all three folders in one place.

## 1. Project Overview

This project captures the full flow of a RISC-V microprocessor design from front-end RTL and verification to backend physical implementation and signoff-style analysis.

The repository combines:

1. Source RTL and simulation testbenches
2. FPGA-oriented wrapper and constraints
3. Synthesis and implementation outputs
4. Timing, area, QoR, DRC, and connectivity reports
5. GLS, power, and LVS-related evidence

## 2. Root Folder Guide (The Three Main Folders)

### 2.1 Cadence_Files

Purpose:

1. Workspace container for Cadence-oriented project organization.
2. Keeps Cadence-related path structure visible at repository root.

Current content note:

1. Contains a placeholder README to keep the folder visible on GitHub.
2. Main implementation data lives in RTL_to_GDS, not here.

### 2.2 RTL_FPGA

Purpose:

1. Front-end design and verification directory.
2. Holds RTL source code, board integration files, and simulation testbenches.

Core contents:

1. design: RTL modules such as pipeline stages, control, ALU, memories, muxes, and top wrappers.
2. tb: focused and regression testbenches for instruction classes and hazards.
3. tb_new: additional algorithmic and hazard scenario testbenches.
4. c_src: C programs used as source inputs for instruction generation workflows.

### 2.3 RTL_to_GDS

Purpose:

1. Backend implementation and signoff-collateral directory.
2. Tracks synthesis, PnR, GLS, power, and LVS outcomes.

Core contents:

1. rtl design: backend-facing RTL/scripts/reports/outputs.
2. genus files: synthesis reports, netlist collateral, and flow screenshots.
3. innovus files: implementation checkpoints, DRC/connectivity reports, GDS-related files.
4. GLS_Simulation: gate-level simulation artifacts and waveform outputs.
5. power: power estimation/simulation artifacts and reports.
6. LVS: layout-vs-schematic notes and run artifacts.
7. work: generated tool databases and intermediate implementation state.

## 3. End-to-End Flow Covered By This Repository

The project captures a practical RTL-to-GDS flow:

1. RTL design and module integration in RTL_FPGA/design.
2. Behavioral and directed verification through tb and tb_new suites.
3. Program generation flow from C to machine code for simulation stimulus.
4. Synthesis in Genus with stage-wise report generation.
5. Physical implementation in Innovus (floorplan, placement, CTS, routing).
6. Signoff-style checks (timing/area/DRC/connectivity).
7. Post-implementation analysis through GLS, power, and LVS collateral.

## 4. RTL_FPGA Detailed Summary

### 4.1 What the Design Folder Contains

RTL_FPGA/design contains the major microarchitecture building blocks:

1. Pipeline stage modules: Fetch, Decode, Execute, memory_stage, Write_back.
2. Pipeline registers: fetch_pipe, decode_pipe, execute_pipe, memstage_pipe.
3. Datapath primitives: adder, alu, branch, mux blocks.
4. Control and decode logic: control_unit, control_decoder, type_decoder, immediate_gen.
5. Storage and program support: register_file, data_memory, instruction_memory and wrappers.
6. Top-level integration: Microprocessor, Core, Basys3_top.
7. FPGA constraints: basys3_top.xdc.

Instruction memory files included:

1. instr_max5.mem
2. instr_sort5.mem

### 4.2 What the Testbenches Cover

RTL_FPGA/tb includes:

1. Single-instruction class tests for R/I/S/B/U/J and JALR behavior.
2. Hazard tests for RAW, load-use, store-data, branch interaction, and stress mixes.
3. Broader RV32I regression-style run coverage.

RTL_FPGA/tb_new extends with:

1. Algorithm-driven checks (fibonacci, gcd, max, sort, sum).
2. Additional hazard/control combinations and ordering scenarios.
3. Consolidated single-run RV32I coverage bench.

## 5. RTL_to_GDS Detailed Summary

### 5.1 Synthesis and Reporting

Synthesis collateral is organized across:

1. RTL_to_GDS/rtl design
2. RTL_to_GDS/genus files

These areas contain:

1. Stage-wise timing/area/gate/QoR reports.
2. Generic/mapped/incremental/final netlist outputs.
3. Associated constraints and formal-equivalence support files.

### 5.2 Physical Design and Signoff Files

Physical design data is organized in RTL_to_GDS/innovus files and includes:

1. Netlist-to-GDS run artifacts.
2. I/O and top-level integration collateral.
3. DRC reports.
4. Final GDS-related files.

### 5.3 GLS, Power, and LVS

1. GLS_Simulation stores gate-level simulation outputs such as waveforms and VCD evidence.
2. power stores power-analysis context and generated reports.
3. LVS stores LVS run notes/artifacts, including currently documented naming/alignment issues that affected final compare closure.

## 6. Known Reported Project Metrics

From existing report snapshots documented in this repository:

1. Final setup slack reported as MET with +1 ps worst-path slack.
2. Clock period used in final timing context: 20,000 ps (50 MHz).
3. Final area summary includes total area around 379,586.276.
4. Final DRC status reported as no violations in final report set.

These values are report-derived and should be revalidated if tool/library versions change.

## 7. How To Read This Repository Efficiently

Recommended order:

1. Start from this root README.
2. Go to RTL_FPGA for architecture and verification understanding.
3. Go to RTL_to_GDS for synthesis through signoff collateral.
4. Use subfolder READMEs for stage-specific notes.

## 8. Practical Notes

1. Repository includes large generated EDA outputs in addition to source files.
2. For lightweight browsing, use selective clone/sparse checkout if needed.
3. Reproducing exact backend numbers depends on tool, library, and run environment consistency.

## 9. Maintainer

Vignesh-GMAXX
