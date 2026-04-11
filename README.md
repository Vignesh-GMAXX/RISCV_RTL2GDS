# RISC-V RTL to GDSII Project

This workspace contains a complete digital implementation flow for a RISC-V style microprocessor, from RTL design through synthesis, floorplanning, CTS, routing, and signoff collateral.

## Project Overview

The project is organized around one main design tree in [scl6m](scl6m/README.md), with these core stages:

1. RTL design and constraints.
2. Logic synthesis setup and outputs.
3. Physical design (floorplan, placement, power planning).
4. Clock tree synthesis and routing.
5. Signoff and verification collateral.

## Top-Level Structure

- [scl6m](scl6m/README.md): Main project directory containing design, implementation, signoff, and verification data.

Inside [scl6m](scl6m/README.md), major folders are:

- [scl6m/design](scl6m/design/README.md): RTL, synthesis scripts, constraints, and design reports.
- [scl6m/cts](scl6m/cts/README.md): CTS scripts, Innovus command files, checkpoints, and timing reports.
- [scl6m/floorplan](scl6m/floorplan/README.md): Floorplan/power-planning databases, IO specs, and incremental constraints.
- [scl6m/floorplanning](scl6m/floorplanning/README.md): Alternate floorplanning snapshot with similar implementation collateral.
- [scl6m/RTL_to_GDS](scl6m/RTL_to_GDS/README.md): Archived/reference flow assets, testbenches, and implementation examples.
- [scl6m/verification](scl6m/verification/README.md): Verification and DRC/LVS/DFM-related data areas.
- [scl6m/pd_signoff](scl6m/pd_signoff/README.md): Signoff workspace.
- [scl6m/gds_dir](scl6m/gds_dir/README.md): GDS output directory.
- [scl6m/dxf_dir](scl6m/dxf_dir/README.md): DXF output directory.
- [scl6m/work_libs](scl6m/work_libs/README.md): Libraries/technology collateral.
- [scl6m/cds_master](scl6m/cds_master/README.md): Cadence environment and library structure.

## Key RTL and Synthesis Files

Primary RTL sources are in [scl6m/design](scl6m/design/README.md):

- Datapath/control modules: adder.v, alu.v, branch.v, control_decoder.v, control_unit.v, type_decoder.v.
- Pipeline stages: Fetch.v, Decode.v, Execute.v, memory_stage.v, Write_back.v.
- Pipeline support: fetch_pipe.v, decode_pipe.v, execute_pipe.v, memstage_pipe.v, execute_forwarding.v.
- Core integration: Core.v, Microprocessor.v, microprocessor_pad_top.v, Basys3_top.v.
- Memory/register blocks: instruction_memory.v, instruc_mem_top.v, data_memory.v, data_memory_top.v, register_file.v, wrapper_memory.v.
- Utility blocks: immediate_gen.v, mux1_2.v, mux2_4.v, program_counter.v.
- Synthesis/constraints: genus.cmd, run.tcl, microprocessor_genus.sdc.

## Physical Design and Implementation Files

Important physical design artifacts are distributed as follows:

- CTS stage in [scl6m/cts](scl6m/cts/README.md):
	- Scripts: config.tcl, cts.tcl, innovus.cmd.
	- Checkpoints: microprocessor_pad_top_CTS.enc, microprocessor_pad_top_route.enc, microprocessor_pad_top_route_with_filler.enc.
	- Reports/logs: microprocessor_pad_top.geom.rpt, innovus.log, innovus.logv, timingReports/.

- Floorplan stage in [scl6m/floorplan](scl6m/floorplan/README.md):
	- Inputs/support: microprocessor.io, microprocessor.view, power_pad.tx, rv.CapTbl, filler.txt.
	- Scripts/constraints: powerplanning_glb_connect.tcl, microprocessor_pad_top_incremental.sdc.
	- Checkpoints: microprocessor_pad_top_floorplan.enc, microprocessor_pad_top_placement.enc, microprocessor_pad_top_pp.enc.

- Alternate floorplanning data in [scl6m/floorplanning](scl6m/floorplanning/README.md).

## Signoff and Verification Areas

- [scl6m/verification](scl6m/verification/README.md): verification subdomains including ant, cbr_dir, ckm_dir, density, dfm, drc, and drclvs.
- [scl6m/pd_signoff](scl6m/pd_signoff/README.md): signoff run workspace.
- [scl6m/doc](scl6m/doc/README.md): project documentation area.

## Complete File Index Guidance

This main README is intentionally descriptive and architecture-focused.

For complete file-level listings, every directory has its own README with all immediate files and short descriptions. Start from:

1. [scl6m/README.md](scl6m/README.md)
2. Navigate into any folder link to view its full local file list.

## Root Workspace Files

- [README.md](README.md): Main project overview and navigation guide.
