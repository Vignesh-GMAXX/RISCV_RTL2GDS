#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Apr 11 01:25:46 2026                
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
set init_gnd_net {VSS_CORE VSSO_CORE}
set init_lef_file {/opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_tech.lef /opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_std.lef /opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/lef/tsl18cio150_6lm.lef}
set init_verilog microprocessor_pad_top_incremental.v
set init_mmmc_file microprocessor.view
set init_io_file microprocessor.io
set init_pwr_net {VDD_CORE VDDO_CORE}
init_design
zoomBox -60.30200 20.33500 3453.61600 2134.92800
zoomBox 83.27100 128.40500 3070.10300 1925.81000
zoomBox 300.26900 321.21000 2458.25600 1619.83600
zoomBox 381.25300 406.02800 2215.54200 1509.86000
zoomBox 76.45400 111.11600 3063.29000 1908.52400
zoomBox 260.55500 364.72500 2418.54500 1663.35300
zoomBox 469.75600 702.19700 1596.24200 1380.09000
zoomBox 578.80700 878.36000 1166.84000 1232.22400
zoomBox 631.36200 972.47800 938.32000 1157.19800
zoomBox 579.76400 877.60600 1167.80000 1231.47200
zoomBox 480.92100 695.86200 1607.41300 1373.75800
zoomBox 291.56700 347.69700 2449.57400 1646.33500
zoomBox -85.23700 -313.70900 4048.82800 2174.07400
zoomBox -85.23800 -125.51900 3428.71800 1989.09700
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -d 1940 1940 125 125 125 125
uiSetTool select
getIoFlowFlag
fit
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side n
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side n
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side n
zoomBox -360.19100 452.17200 2201.70400 1993.86000
zoomBox -187.24900 667.21200 1990.36200 1977.64700
zoomBox -146.38900 792.21100 1704.58100 1906.08100
zoomBox -81.26300 989.47100 1256.06300 1794.24200
zoomBox -147.41700 791.38800 1703.55400 1905.25900
zoomBox -556.33500 -66.72900 2989.54300 2067.09700
zoomBox -910.17000 -773.39000 3997.61900 2180.00200
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side e
zoomBox -478.60400 -458.97900 3693.01600 2051.40400
zoomBox -117.79400 -188.02400 3428.08300 1945.80100
zoomBox 170.78400 25.75200 3184.78000 1839.50400
zoomBox 645.57100 293.19700 2823.18400 1603.63300
zoomBox 834.88300 398.61200 2685.85400 1512.48300
zoomBox 440.74000 222.85300 3002.64000 1764.54400
zoomBox 190.09400 111.08300 3204.09400 1924.83700
zoomBox -104.78400 -20.41200 3441.09900 2113.41700
zoomBox -454.47900 -176.03800 3717.15000 2334.35000
zoomBox -1352.26300 -574.52600 4421.61900 2900.06000
zoomBox -866.97500 -359.12800 4040.82500 2594.27100
zoomBox -453.93600 -174.94900 3717.69500 2335.44000
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side w
addIoFiller -cell pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010 -prefix FILLER -side s
zoomBox -184.80400 309.99400 2377.10100 1851.68800
zoomBox 234.27900 1081.78900 206.49800 1073.16000
zoomBox 206.49800 1069.11500 234.27900 1085.83300
zoomBox 204.91000 1065.88900 243.36100 1089.02800
zoomBox 201.06600 1058.61800 263.67900 1096.29700
zoomBox 187.17500 1034.00000 328.29300 1118.92100
zoomBox 161.04700 990.86600 431.38800 1153.55100
zoomBox 101.34200 905.42100 619.23200 1217.07500
zoomBox -19.75900 737.63400 972.35500 1334.66500
zoomBox -259.15000 397.37800 1641.43500 1541.10500
zoomBox -892.34400 -530.36600 3391.09600 2047.30700
saveDesign microprocessor_pad_top_floorplan.enc
globalNetConnect VDD_CORE -type pgpin -pin VDD -all
globalNetConnect VSS_CORE -type pgpin -pin VSS -all
globalNetConnect VDDO_CORE -type pgpin -pin VDDO -all
globalNetConnect VSSO_CORE -type pgpin -pin VSSO -all
globalNetConnect VDD_CORE -type tiehi
globalNetConnect VSS_CORE -type tielo
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD_CORE VSS_CORE} -type core_rings -follow core -layer {top M5 bottom M5 left TOP_M right TOP_M} -width {top 25 bottom 25 left 25 right 25} -spacing {top 10 bottom 10 left 10 right 10} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
zoomBox -671.19700 -235.50300 2969.72700 1955.51900
zoomBox -483.22200 15.13000 2611.56400 1877.49900
zoomBox -321.72500 234.01000 2308.84300 1817.02400
zoomBox -484.94000 14.44300 2609.84600 1876.81200
zoomBox -702.83000 -207.08500 2938.09500 1983.93800
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD_CORE VSS_CORE} -layer TOP_M -direction vertical -width 10 -spacing 10 -set_to_set_distance 100 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { padPin corePin floatingStripe } -layerChangeRange { M1(1) TOP_M(6) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1(1) TOP_M(6) } -nets { VDD_CORE VSS_CORE } -allowLayerChange 1 -targetViaLayerRange { M1(1) TOP_M(6) }
zoomBox 173.99200 607.38300 1789.49200 1579.55300
zoomBox 278.02500 711.23700 1651.20000 1537.58100
zoomBox 442.18100 867.49400 1434.30000 1464.52800
zoomBox 645.00000 1061.02100 1162.89300 1372.67700
zoomBox 750.17600 1161.61600 1020.52000 1324.30300
zoomBox 805.07700 1214.12800 946.19900 1299.05200
zoomBox 814.07100 1222.73000 934.02500 1294.91500
zoomBox 837.29900 1248.78600 890.52500 1280.81600
zoomBox 834.20500 1245.06600 896.82400 1282.74900
zoomBox 821.24400 1229.48400 923.21100 1290.84500
zoomBox 778.94400 1178.19600 1008.75400 1316.49000
zoomBox 680.18100 1058.28100 1198.11900 1369.96400
zoomBox 448.50500 783.34700 1615.80700 1485.80200
zoomBox 67.15500 330.79200 2303.34100 1676.47600
zoomBox -667.93700 -546.77100 3615.89500 2031.13800
zoomBox -437.25700 -271.38200 3204.00000 1919.84100
saveDesign microprocessor_pad_top_pp.enc
selectInst pc3o05_dbg_out_13
gui_select -rect {2411.60200 1383.49000 2414.29800 1359.23300}
deselectAll
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort high -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 0 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_design
zoomBox -176.49400 -171.92800 2918.57600 1690.61200
zoomBox 45.15500 -87.39300 2675.96500 1495.76700
zoomBox 192.07800 -15.24600 2428.26800 1330.44100
zoomBox 315.97000 43.34800 2216.73200 1187.18200
zoomBox 586.87400 171.47100 1754.18100 873.92900
zoomBox 651.80500 201.79800 1644.01700 798.88800
zoomBox 853.63000 290.86300 1293.88200 555.79600
zoomBox 943.18200 330.38200 1138.52500 447.93500
zoomBox 957.19200 336.39000 1123.23400 436.31000
zoomBox 979.22400 345.83700 1099.19000 418.03000
zoomBox 937.35600 326.36500 1132.70100 443.91900
zoomBox 801.03100 262.73400 1241.29000 527.67200
zoomBox 576.63100 157.99400 1420.03300 665.53300
zoomBox -11.95200 -116.73100 1888.86500 1027.13600
zoomBox -676.75500 -427.03300 2418.40900 1435.56400
zoomBox -979.17000 -568.53700 2662.20000 1622.75400
gui_select -rect {2298.33300 938.14400 2354.93500 938.14400}
gui_select -rect {2133.91900 1296.62100 1969.50400 1029.78500}
zoomSelected -margin 50
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 500 -prefix microprocessor_pad_top_preCTS -outDir timingReports
zoomBox -412.10100 222.86400 2149.79500 1764.55300
zoomBox -245.98500 358.26000 1931.62600 1668.69500
zoomBox 279.45800 785.07100 1245.67700 1366.51900
zoomBox 512.59800 974.44900 941.31700 1232.44200
zoomBox 616.04300 1058.47700 806.27000 1172.95100
zoomBox 661.86300 1096.23100 746.27000 1147.02500
zoomBox 675.96500 1107.85100 727.80200 1139.04500
zoomBox 679.24600 1110.67100 723.30700 1137.18600
zoomBox 683.57200 1115.64000 715.40600 1134.79700
zoomBox 684.47600 1117.68600 711.53600 1133.97000
zoomBox 685.89900 1120.90400 705.45000 1132.66900
zoomBox 686.56500 1122.08800 703.18400 1132.08900
zoomBox 688.02200 1124.67900 698.22900 1130.82100
zoomBox 688.65300 1125.93700 696.02800 1130.37500
zoomBox 688.89800 1126.42800 695.16800 1130.20100
zoomBox 688.58600 1125.97600 695.96200 1130.41500
zoomBox 688.16200 1125.45500 696.84000 1130.67700
zoomBox 686.79300 1124.18600 698.80600 1131.41500
zoomBox 682.22400 1120.02400 705.23900 1133.87400
zoomBox 676.21800 1114.47900 713.69500 1137.03200
zoomBox 673.47100 1111.94300 717.56200 1138.47600
zoomBox 661.96700 1101.32000 733.76200 1144.52500
zoomBox 656.70400 1096.46200 741.17100 1147.29200
zoomBox 634.66500 1076.11200 772.20600 1158.88100
zoomBox 624.58600 1066.80600 786.39900 1164.18100
zoomBox 598.77700 1042.97500 822.74200 1177.75200
zoomBox 582.36500 1027.82100 845.85300 1186.38200
zoomBox 482.17700 935.31300 986.93800 1239.06600
zoomBox 290.24700 758.09500 1257.21200 1339.99200
zoomBox -77.43200 418.60100 1774.97200 1533.33400
zoomBox -552.99900 -31.98000 2463.33400 1783.17800
zoomBox -815.40300 -239.22400 2733.22400 1896.25600
zoomBox -1126.43100 -480.25900 3048.42400 2032.07000
zoomBox -219.49500 -113.94100 1959.80600 1197.51100
zoomBox -70.92900 -53.93400 1781.47800 1060.80100
zoomBox -469.34800 -226.29900 2094.53800 1316.58700
zoomBox 140.65900 14.62800 1715.20600 962.15300
zoomBox 680.72800 227.93100 1379.36500 648.35400
zoomBox 878.69300 312.82500 1243.38700 532.28900
zoomBox 980.75600 357.85700 1171.12900 472.41900
zoomBox 1034.03300 381.36400 1133.41000 441.16700
zoomBox 1049.93300 388.77400 1121.73400 431.98200
zoomBox 1042.63600 385.30400 1127.10800 436.13700
zoomBox 1023.95200 376.41900 1140.86800 446.77600
zoomBox 1012.07100 370.76800 1149.61900 453.54100
zoomBox 998.09300 364.12000 1159.91400 461.50000
zoomBox 941.24100 325.46500 1204.74000 484.03200
zoomBox 884.60700 287.18400 1249.31200 506.65500
zoomBox 848.59200 262.84100 1277.65700 521.04200
zoomBox 756.37400 200.57500 1350.23600 557.94700
zoomBox 628.39900 115.36900 1450.35400 610.00200
zoomBox 333.27900 -56.74300 1671.69500 748.68400
zoomBox -147.27600 -335.61400 2032.11200 975.89000
zoomBox -625.59900 -613.19100 2390.85500 1202.04000
zoomBox -929.78000 -789.71000 2618.99000 1345.85600
zoomBox -1287.64000 -997.38000 2887.38400 1515.05100
zoomBox -1708.65100 -1241.69700 3203.14200 1714.10400
fit
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
saveDesign microprocessor_pad_top_placement.enc
saveDesign microprocessor_pad_top_placement.enc
saveDesign microprocessor_pad_top_placement.enc
