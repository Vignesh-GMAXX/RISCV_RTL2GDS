# RISCV_RTL2GDS

Detailed repository for a RISC-V microprocessor project spanning:

1. RTL design and FPGA-focused verification
2. Synthesis and physical implementation
3. Signoff collateral and reports
4. Gate-level simulation, power artifacts, and LVS notes

This README is intentionally detailed and is designed to be a complete project guide.

## 1. Project Scope

The repository captures the implementation lifecycle of a RISC-V pipeline-oriented microprocessor design. The content includes both source-level design files and downstream EDA outputs.

Primary goals of the project:

1. Build and validate a functional RV32I-style datapath/control pipeline at RTL.
2. Verify functionality with targeted and regression testbenches.
3. Carry the design through synthesis, floorplanning, placement, CTS, and routing.
4. Produce signoff-oriented timing/area/DRC/connectivity reports.
5. Archive supporting GLS, power, and LVS artifacts.

## 2. Top-Level Repository Structure

At the root, the repository contains:

1. Cadence_Files/
2. RTL_FPGA/
3. RTL_to_GDS/
4. README.md

### 2.1 Cadence_Files/

Current role:

1. Container directory for Cadence-related workspace organization.
2. Includes a placeholder README so the folder remains visible in GitHub.

### 2.2 RTL_FPGA/

Focus area:

1. RTL source hierarchy and board/FPGA integration files.
2. Testbench suites for instruction-level and hazard-level verification.
3. C-to-RISC-V program preparation notes for simulation stimulus.

### 2.3 RTL_to_GDS/

Focus area:

1. Genus synthesis reports and netlist collateral.
2. Innovus implementation artifacts and signoff outputs.
3. GLS simulation evidence, LVS notes, and power-related files.
4. A persistent work directory with generated implementation state.

## 3. RTL_FPGA: Detailed Breakdown

The RTL_FPGA folder is the front-end and verification side of the project.

### 3.1 Design Sources (RTL_FPGA/design)

Design folder contains 34 files, including datapath, control, memories, and wrappers:

1. adder.v
2. alu.v
3. Basys3_top.v
4. basys3_top.xdc
5. branch.v
6. clock_divider.v
7. control_decoder.v
8. control_unit.v
9. Core.v
10. data_memory.v
11. data_memory_top.v
12. Decode.v
13. decode_pipe.v
14. Execute.v
15. execute_forwarding.v
16. execute_pipe.v
17. Fetch.v
18. fetch_pipe.v
19. immediate_gen.v
20. instruction_memory.v
21. instruc_mem_top.v
22. instr_max5.mem
23. instr_sort5.mem
24. memory_stage.v
25. memstage_pipe.v
26. Microprocessor.v
27. mux1_2.v
28. mux2_4.v
29. mux3_8.v
30. program_counter.v
31. register_file.v
32. type_decoder.v
33. wrapper_memory.v
34. Write_back.v

Functional interpretation of major blocks:

1. Fetch/decode/execute/memory/writeback stage partitioning is represented by Fetch.v, Decode.v, Execute.v, memory_stage.v, and Write_back.v.
2. Inter-stage pipeline registers are represented by fetch_pipe.v, decode_pipe.v, execute_pipe.v, and memstage_pipe.v.
3. ALU and branch decision logic are represented by alu.v and branch.v.
4. Immediate generation and instruction type decoding are represented by immediate_gen.v and type_decoder.v.
5. Register and memory components are represented by register_file.v, data_memory.v, instruction_memory.v, and top wrappers.
6. Basys3_top.v and constraint file basys3_top.xdc provide board-level wrapping for FPGA deployment/testing.

### 3.2 Main Testbench Suite (RTL_FPGA/tb)

The tb folder contains 22 testbenches, including focused ISA and hazard checks:

1. Basys3_top_tb.v
2. FPGA_simple_tb.v
3. FPGA_TB.v
4. Microprocessor_4reg_tb.v
5. Microprocessor_btype_single_inst_tb.v
6. Microprocessor_hazards_all_tb.v
7. Microprocessor_hazard_add_beq_tb.v
8. Microprocessor_hazard_free_tb.v
9. Microprocessor_hazard_lw_add_tb.v
10. Microprocessor_hazard_raw_adj_tb.v
11. Microprocessor_hazard_raw_gap1_tb.v
12. Microprocessor_hazard_store_data_tb.v
13. Microprocessor_hazard_stress_tb.v
14. Microprocessor_hazard_war_like_tb.v
15. Microprocessor_itype_single_inst_tb.v
16. Microprocessor_jalr_single_inst_tb.v
17. Microprocessor_jtype_single_inst_tb.v
18. Microprocessor_load_single_inst_tb.v
19. Microprocessor_rtype_single_inst_tb.v
20. Microprocessor_rv32i_all37_tb.v
21. Microprocessor_stype_single_inst_tb.v
22. Microprocessor_utype_single_inst_tb.v

Coverage intent of this suite:

1. Single-instruction sanity for R, I, S, B, U, J, and JALR classes.
2. Dependency/hazard-focused scenarios: RAW adjacent and gap, load-use, store data, branch/control interactions.
3. Combined regression with Microprocessor_hazards_all_tb.v and broader instruction sweep using Microprocessor_rv32i_all37_tb.v.

### 3.3 Extended Testbench Suite (RTL_FPGA/tb_new)

The tb_new folder contains 17 additional tests:

1. Algorithm_fibonacci_tb.v
2. Algorithm_gcd_tb.v
3. Algorithm_max4_tb.v
4. Algorithm_sort4_tb.v
5. Algorithm_sum_n_tb.v
6. Hazard4_ctrl_bb_tb.v
7. Hazard4_ctrl_ctrl_tb.v
8. Hazard4_ctrl_jj_tb.v
9. Hazard4_load_branch_tb.v
10. Hazard4_load_use_tb.v
11. Hazard4_partial_store_load_tb.v
12. Hazard4_raw_adj_tb.v
13. Hazard4_raw_gap1_tb.v
14. Hazard4_raw_gap2_tb.v
15. Hazard4_store_data_tb.v
16. Hazard4_store_load_order_tb.v
17. Microprocessor_rv32i_all37_single_run_tb.v

These tests extend:

1. Algorithmic workloads for functional confidence beyond synthetic one-op sequences.
2. More granular control hazard mixes and store/load ordering checks.
3. Single-run consolidated RV32I pattern execution.

### 3.4 Suggested RTL_FPGA Simulation Setup

The existing project notes indicate this standard flow:

1. Add all RTL files from RTL_FPGA/design as design sources.
2. Add selected files from RTL_FPGA/tb or RTL_FPGA/tb_new as simulation sources.
3. Set a target testbench as simulation top.
4. Run behavioral simulation and validate expected register/memory/control behavior.

## 4. Program Generation Flow (C to RISC-V Machine Code)

The RTL_FPGA documentation includes a Windows + WSL flow for generating simulation programs.

Typical toolchain sequence:

1. Install riscv64-unknown-elf gcc toolchain.
2. Compile C to assembly and ELF for RV32I.
3. Convert ELF to binary.
4. Convert binary words to hex format for instruction loading.

Representative command sequence:

```bash
sudo apt install gcc-riscv64-unknown-elf
riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -O3 -nostdlib -S main.c -o program.s
riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -O3 -nostdlib -Wl,-Ttext=0x00000000 main.c -o program.elf
riscv64-unknown-elf-objcopy -O binary program.elf program.bin
hexdump -v -e '1/4 "%08x\n"' program.bin > program.hex
```

Usage expectation:

1. Use generated program.hex as instruction memory input for simulation-oriented testbenches.
2. Update checks/assertions in the active testbench according to expected program behavior.

## 5. RTL_to_GDS: Detailed Breakdown

The RTL_to_GDS folder contains implementation and signoff-oriented collateral.

Top-level directories and files:

1. genus files/
2. GLS_Simulation/
3. innovus files/
4. LVS/
5. power/
6. rtl design/
7. work/
8. contribution table.pdf
9. README.md

### 5.1 Reported Signoff Snapshot

Key values documented in existing flow notes:

1. Final setup slack (worst register-to-register path): +1 ps (MET)
2. Clock period: 20,000 ps (50 MHz)
3. Critical data path delay: 17,266 ps
4. Final total area: 379,586.276
5. Final cell area: 369,128.284
6. Final net area: 10,457.992
7. Final synthesis leaf instance count: 8,937
8. DRC summary reported as no violations in final report set

Critical path endpoints documented:

1. Source: u_microprocessor_core/u_core/u_executepipeline/alu_result_reg[2]/CP
2. Destination: u_microprocessor_core/u_core/u_fetchstage/u_pc0/address_out_reg[0]/D

### 5.2 Genus Artifacts (RTL_to_GDS/genus files)

Purpose:

1. Capture synthesis-stage reports, mapped netlist artifacts, and visual snapshots.
2. Preserve report sets across generic/map/optimized/final contexts.

Typical contents include:

1. Area, gate-count, QoR, and timing reports.
2. Mapped and generic netlist-related files.
3. Screenshots used to document milestones in synthesis and implementation.

### 5.3 RTL Design Inputs for Backend (RTL_to_GDS/rtl design)

Purpose:

1. Hold source-side files and scripts used as backend flow entry.
2. Archive reports, outputs, and formal-equivalence mapping files generated during synthesis progression.

Notable sub-areas:

1. rtl design/outputs for generated netlists and SDC views.
2. rtl design/reports for stage-wise metrics.
3. rtl design/fv for formal mapping collateral.

### 5.4 Innovus Artifacts (RTL_to_GDS/innovus files)

Purpose:

1. Preserve implementation databases/checkpoints and final GDS-related exports.
2. Store netlist checks and DRC reporting outputs.

Notable sub-areas:

1. innovus files/io_pins_and_top_file
2. innovus files/netlist_to_gds
3. innovus files/gds related
4. innovus files/drc

### 5.5 GLS Evidence (RTL_to_GDS/GLS_Simulation)

Documented GLS notes indicate:

1. Pad-level top testbench microprocessor_pad_top_tb used.
2. VCD waveforms generated under GLS_Simulation subfolders.
3. Instruction stream exercising arithmetic, logical, memory, branch, and jump classes.

### 5.6 Power Collateral (RTL_to_GDS/power)

The power folder contains simulation and report artifacts for power analysis context.

Documented summary values:

1. Total power around 24.19 mW (as noted in existing flow documentation).
2. Register-heavy contribution share noted in existing report summary.

### 5.7 LVS Notes (RTL_to_GDS/LVS)

Current LVS status in existing notes:

1. Final compare did not complete due to ground-pin naming mismatch (VSS_CORE vs VSS).
2. Additional run-time issues such as duplicate subckt warnings were reported.
3. Result interpretation indicates a netlist consistency and naming alignment task remains before clean closure.

### 5.8 Work Database (RTL_to_GDS/work)

The work folder is a generated implementation workspace and includes tool databases/checkpoints/logs. It is useful for traceability and replay, but it is not a hand-maintained source tree.

## 6. Architecture and Debug Visibility Notes

Based on existing project documentation, the top-level implementation supports:

1. Instruction memory selection via 2-bit control.
2. Output-selection multiplexing via 2-bit control.
3. Shared 32-bit debug-style output bus carrying different internal views by mode.

Documented output modes include:

1. Packed register values
2. Program counter/control-signal packed view
3. Current instruction view
4. Packed ALU inputs/output and memory output view

## 7. Verification Strategy Summary

The verification approach in this repository is layered:

1. Unit-like instruction-class tests in RTL_FPGA/tb.
2. Hazard-focused directed tests in RTL_FPGA/tb and RTL_FPGA/tb_new.
3. Broader regression-style runs for RV32I coverage.
4. GLS evidence under RTL_to_GDS/GLS_Simulation.

Hazard themes represented across benches:

1. RAW adjacency and spaced dependencies
2. Load-use interactions
3. Store-data forwarding/order interactions
4. Control/control and jump/control combinations

## 8. Practical Navigation Guide

If you are new to this repository, a good read order is:

1. Start with this root README.
2. Review RTL_FPGA/README.md for simulation and testbench intent.
3. Inspect RTL_FPGA/design for module-level structure.
4. Run/inspect RTL_FPGA/tb and RTL_FPGA/tb_new for behavior validation.
5. Move to RTL_to_GDS/README.md for physical-flow and signoff context.
6. Inspect RTL_to_GDS/rtl design/reports and RTL_to_GDS/genus files for synthesis metrics.
7. Inspect RTL_to_GDS/innovus files for implementation outputs and checks.
8. Use RTL_to_GDS/GLS_Simulation, RTL_to_GDS/power, and RTL_to_GDS/LVS for post-implementation evidence.

## 9. Reproducibility and Environment Notes

Important practical notes:

1. This repository contains both source and generated EDA artifacts.
2. Some files are large and may be expensive to clone repeatedly.
3. For lightweight access, sparse checkout or selective download is recommended.
4. Tool versions and PDK/library environments can affect exact numerical reproduction of reports.

## 10. Current Known Gaps / Follow-Up Opportunities

Potential improvements for future updates:

1. Add explicit run scripts with command-line wrappers for each EDA stage.
2. Add a consolidated verification dashboard with pass/fail matrix by testbench.
3. Add explicit instruction-coverage matrix mapping benches to ISA groups.
4. Add unified naming-convention cleanup for LVS closure.
5. Add artifact minimization policy if repository size reduction is required.

## 11. Maintainer

Vignesh-GMAXX
