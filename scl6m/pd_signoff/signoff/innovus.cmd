#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Apr 11 21:07:29 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.19-s058_1 (64bit) 04/04/2024 09:59 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.19-s058_1 NR231113-0413/21_19-UB (database version 18.20.605) {superthreading v2.17}
#@(#)CDS: AAE 21.19-s004 (64bit) 04/04/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.19-s010_1 () Mar 27 2024 01:55:37 ( )
#@(#)CDS: SYNTECH 21.19-s002_1 () Sep  6 2023 22:17:00 ( )
#@(#)CDS: CPE v21.19-s026
#@(#)CDS: IQuantus/TQuantus 21.1.1-s966 (64bit) Wed Mar 8 10:22:20 PST 2023 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /home/thoshith/work_riscv/scl6m/cts/microprocessor_pad_top_route_with_filler.enc.dat microprocessor_pad_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
reset_parasitics
extractRC
rcOut -spef microprocessor_pad_top.spef -rc_corner rc_best
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report microprocessor_pad_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
verifyConnectivity -type all -error 1000 -warning 50
checkDesign -io -netlist -physicalLibrary -powerGround -tieHilo -timingLibrary -spef -floorplan -place -outdir checkDesign
streamOut riscv.gds -mapFile ../streamout_innovous_6M1L.map -libName DesignLib -units 1000 -mode ALL
saveNetlist -includePowerGround /home/thoshith/work_riscv/scl6m/pd_signoff/signoff/rv_signoff_withPG.v
saveNetlist /home/thoshith/work_riscv/scl6m/pd_signoff/signoff/rv_signoff_withoutPG.v
write_sdf -version 2.1 -edges noedge -recrem split -setuphold merge_when_paired /home/thoshith/work_riscv/scl6m/pd_signoff/signoff/rv_postroute_with_pad_delay.sdf
saveDesign microprocessor_pad_top_signoff.enc
