# RISCV_RTL2GDS

A compact repository containing end-to-end artifacts for a RISC-V based digital IC flow, from RTL development to physical design collateral.

## Repository Layout

- `Cadence_Files/`
  - Cadence-related workspace container.
  - Includes a placeholder file to keep this directory visible in GitHub.
- `RTL_FPGA/`
  - RTL modules, FPGA-oriented top-level design files, and extensive testbenches.
  - Includes instruction memory files and verification suites for hazard and RV32I behavior.
- `RTL_to_GDS/`
  - Synthesis, place-and-route, signoff, GLS simulation, LVS, and power-analysis related artifacts.
  - Contains Innovus/Genus outputs, reports, and supporting files.

## What This Repo Is For

- Studying and demonstrating a practical RTL-to-GDS pipeline.
- Tracking implementation and verification artifacts for a RISC-V microprocessor project.
- Serving as a reference for academic or learning-oriented VLSI design flows.

## Notes

- Some directories may include generated EDA outputs and logs.
- If you are cloning for lightweight browsing, use sparse checkout or selective download where possible.

## Maintainer

Vignesh-GMAXX
