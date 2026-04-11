#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Apr 11 18:59:29 2026                
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
zoomBox -0.07300 -0.05400 0.14100 0.13800
zoomBox -0.01900 -0.01100 0.11300 0.10700
zoomBox -0.03400 -0.02300 0.12100 0.11600
zoomBox -0.01900 -0.01100 0.11300 0.10700
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /home/thoshith/work_riscv/scl6m/floorplanning/microprocessor_pad_top_placement.enc.dat microprocessor_pad_top
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
set init_top_cell microprocessor_pad_top
set_global report_timing_format {instance arc net cell slew delay arrival required} 
set_analysis_view -setup {worst_case} -hold {best_case} 
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -drouteUseMultiCutViaEffort high
set_ccopt_property buffer_cells {bufbd1 bufbd2 bufbd3 bufbd4 bufbd7 bufbda bufbdf bufbdk}
set_ccopt_property inverter_cells {invbd2 invbd4 invbd7 invbda invbdf invbdk}
setDesignMode -topRoutingLayer 6
create_route_type -name leaf_rule -top_preferred_layer 3 -bottom_preferred_layer 1 -preferred_routing_layer_effort high
create_route_type -name trunk_rule -top_preferred_layer 6 -bottom_preferred_layer 4 -preferred_routing_layer_effort high
set_ccopt_property -net_type leaf route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top route_type trunk_rule
set_ccopt_property primary_delay_corner max_delay
set_ccopt_property route_type_autotrim false
create_ccopt_clock_tree_spec -file /home/thoshith/work_riscv/scl6m/cts/run/microprocessor_pad_top_ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property sink_type -pin CLKOUT_pad ignore
set_ccopt_property sink_type_reasons -pin CLKOUT_pad {implicit design_io}
set_ccopt_property cts_is_sdc_clock_root -pin clk_pad true
create_ccopt_clock_tree -name clk_pad -source clk_pad -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -early -clock_tree clk_pad 1.250
set_ccopt_property target_max_trans_sdc -delay_corner max_delay -late -clock_tree clk_pad 2.000
set_ccopt_property source_latency -delay_corner max_delay -early -rise -clock_tree clk_pad 0.400
set_ccopt_property source_latency -delay_corner max_delay -early -fall -clock_tree clk_pad 0.400
set_ccopt_property source_latency -delay_corner max_delay -late -rise -clock_tree clk_pad 1.000
set_ccopt_property source_latency -delay_corner max_delay -late -fall -clock_tree clk_pad 1.000
set_ccopt_property source_latency -delay_corner min_delay -early -rise -clock_tree clk_pad 0.400
set_ccopt_property source_latency -delay_corner min_delay -early -fall -clock_tree clk_pad 0.400
set_ccopt_property source_latency -delay_corner min_delay -late -rise -clock_tree clk_pad 1.000
set_ccopt_property source_latency -delay_corner min_delay -late -fall -clock_tree clk_pad 1.000
set_ccopt_property clock_period -pin clk_pad 10
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name clk_pad/functional -sources clk_pad -auto_sinks
set_ccopt_property include_source_latency -skew_group clk_pad/functional true
set_ccopt_property extracted_from_clock_name -skew_group clk_pad/functional clk_pad
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk_pad/functional functional
set_ccopt_property extracted_from_delay_corners -skew_group clk_pad/functional {max_delay min_delay}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
get_ccopt_clock_trees *
ctd_win -id before_ccopt
set_ccopt_property -delay_corner max_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type leaf target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type leaf target_max_trans 2
set_ccopt_property -delay_corner min_delay target_skew 0.5
get_ccopt_skew_groups *
set_ccopt_property -skew_group clk_pad/functional -delay_corner min_delay target_skew 0.5
get_ccopt_clock_trees *
set_ccopt_property source_driver pc3d01_clk/CIN -clock_tree clk_pad
set_ccopt_property balance_mode cluster
ccopt_design -cts
ctd_win -id cluster_mode
set_ccopt_property balance_mode trial
ccopt_design -cts
ctd_win -id trial_mode
set_ccopt_property balance_mode full
ccopt_design -cts
ctd_win -id full_mode
report_ccopt_clock_trees -summary -file /home/thoshith/work_riscv/scl6m/cts/reports/microprocessor_pad_top_clock_trees.rpt
report_ccopt_skew_groups -summary -file /home/thoshith/work_riscv/scl6m/cts/reports/microprocessor_pad_top_skew_group.rpt
reportCongestion -overflow -hotSpot > /home/thoshith/work_riscv/scl6m/cts/reports/microprocessor_pad_top_congestion.rpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 500 -prefix microprocessor_pad_top_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 500 -prefix microprocessor_pad_top_postCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS -hold
saveDesign microprocessor_pad_top_CTS.enc
setNanoRouteMode -quiet -routeInsertAntennaDiode 1
setNanoRouteMode -quiet -routeAntennaCellName ADIODE
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer 6
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 500 -prefix microprocessor_pad_top_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 500 -prefix microprocessor_pad_top_postRoute -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute -hold
verify_drc
saveDesign microprocessor_pad_top_route.enc
getFillerMode -quiet
addFiller -cell feedth feedth3 feedth9 -prefix FILLER
zoomBox 137.51100 188.80700 1859.65800 1730.49600
zoomBox 403.35100 374.27700 1647.60300 1488.14800
zoomBox 137.50900 188.80500 1859.65800 1730.49600
zoomBox -248.40700 -94.42800 2135.19000 2039.40000
zoomBox -554.22400 -325.69600 2250.00800 2184.69000
zoomBox -245.68700 -91.16400 2137.91100 2042.66500
saveDesign microprocessor_pad_top_route_with_filler.enc
