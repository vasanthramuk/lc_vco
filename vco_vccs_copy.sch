v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1070 -610 1090 -610 {
lab=vout+}
N 1090 -610 1160 -690 {
lab=vout+}
N 1160 -690 1190 -690 {
lab=vout+}
N 1190 -690 1190 -640 {
lab=vout+}
N 1130 -610 1150 -610 {
lab=vout-}
N 1050 -690 1130 -610 {
lab=vout-}
N 1030 -690 1050 -690 {
lab=vout-}
N 1030 -690 1030 -640 {
lab=vout-}
N 1030 -580 1030 -550 {
lab=vp}
N 1030 -550 1190 -550 {
lab=vp}
N 1190 -580 1190 -550 {
lab=vp}
N 1110 -520 1110 -510 {
lab=vp}
N 1190 -720 1190 -690 {
lab=vout+}
N 1030 -720 1030 -690 {
lab=vout-}
N 920 -690 1030 -690 {
lab=vout-}
N 1190 -690 1300 -690 {
lab=vout+}
N 1030 -950 1190 -950 {
lab=VDD}
N 1110 -990 1110 -950 {
lab=VDD}
N 650 -760 650 -740 {
lab=GND}
N 650 -840 650 -820 {
lab=VDD}
N 1110 -450 1110 -420 {
lab=gnd}
N 1190 -950 1190 -930 {
lab=VDD}
N 1030 -950 1030 -930 {
lab=VDD}
N 1190 -870 1190 -850 {
lab=vout+}
N 1030 -870 1030 -850 {
lab=vout-}
N 1070 -630 1070 -610 {
lab=vout+}
N 1150 -630 1150 -610 {
lab=vout-}
N 1150 -590 1150 -570 {
lab=vp}
N 1070 -590 1070 -570 {
lab=vp}
N 1150 -570 1150 -550 {
lab=vp}
N 1070 -570 1070 -550 {
lab=vp}
N 870 -690 920 -690 {
lab=vout-}
N 1260 -650 1260 -630 {
lab=vout+}
N 1260 -570 1260 -550 {
lab=vp}
N 980 -570 980 -550 {
lab=vp}
N 980 -550 1030 -550 {
lab=vp}
N 980 -650 980 -630 {
lab=vout-}
N 980 -650 1030 -650 {
lab=vout-}
N 1190 -650 1260 -650 {
lab=vout+}
N 1190 -550 1260 -550 {
lab=vp}
N 960 -950 1030 -950 {
lab=VDD}
N 960 -950 960 -940 {
lab=VDD}
N 960 -880 960 -860 {
lab=vout-}
N 960 -860 1030 -860 {
lab=vout-}
N 1270 -950 1270 -940 {
lab=VDD}
N 1270 -880 1270 -860 {
lab=vout+}
N 1190 -950 1270 -950 {
lab=VDD}
N 1190 -860 1270 -860 {
lab=vout+}
N 780 -610 780 -590 {
lab=GND}
N 780 -690 780 -670 {
lab=vout-}
N 780 -690 870 -690 {
lab=vout-}
N 1110 -550 1110 -520 {
lab=vp}
N 870 -950 870 -940 {
lab=VDD}
N 870 -950 960 -950 {
lab=VDD}
N 870 -880 870 -860 {
lab=vout-}
N 870 -860 960 -860 {
lab=vout-}
N 1270 -950 1350 -950 {
lab=VDD}
N 1350 -950 1350 -930 {
lab=VDD}
N 1350 -880 1350 -860 {
lab=vout+}
N 1270 -860 1350 -860 {
lab=vout+}
N 1650 -870 1650 -850 {
lab=vcntrl}
N 1650 -790 1650 -770 {
lab=GND}
N 1030 -850 1030 -720 {
lab=vout-}
N 1190 -850 1190 -720 {
lab=vout+}
N 1090 -750 1130 -750 {
lab=vcntrl}
C {devices/code.sym} 1410 -810 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/isource.sym} 1110 -480 0 0 {name=I0 value=5m}
C {devices/vdd.sym} 1110 -990 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1110 -420 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1110 -430 0 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/code_shown.sym} 1420 -640 0 0 {name=SPICE only_toplevel=false 
value=
"
.control
tran 10p 300n
run
dc vcntrl 0.25 
save all
plot v(vout+)-v(vout-)
plot vp
.endc
"}
C {devices/lab_pin.sym} 1270 -690 1 0 {name=l2 sig_type=std_logic lab=vout+}
C {devices/lab_pin.sym} 970 -690 1 0 {name=l2 sig_type=std_logic lab=vout-}
C {devices/vccs.sym} 1030 -610 0 1 {name=G1 value=1e-2}
C {devices/vccs.sym} 1190 -610 0 0 {name=G2 value=1e-2}
C {devices/res.sym} 960 -910 0 0 {name=R3
value=102
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1270 -910 0 1 {name=R4
value=102
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 780 -590 0 0 {name=l4 lab=GND}
C {devices/isource.sym} 780 -640 0 0 {name=I1 value="PULSE( 0 1 0n 1n 1n 1n )"}
C {devices/lab_pin.sym} 1140 -550 3 0 {name=l3 sig_type=std_logic lab=vp}
C {devices/ind.sym} 870 -910 0 0 {name=L1
m=1
value=4.96n
footprint=1206
device=inductor}
C {devices/ind.sym} 1350 -910 0 0 {name=L2
m=1
value=4.96n
footprint=1206
device=inductor}
C {devices/vsource.sym} 650 -790 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 1650 -820 0 0 {name=V3 value=0}
C {devices/gnd.sym} 1650 -770 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1650 -860 0 0 {name=l3 sig_type=std_logic lab=vcntrl

}
C {devices/vdd.sym} 650 -840 0 0 {name=l3 lab=VDD}
C {sky130_fd_pr/cap_var_lvt.sym} 1060 -750 3 0 {name=C5 model=cap_var_lvt W=25 L=25 VM=1 spiceprefix=X}
C {sky130_fd_pr/cap_var_lvt.sym} 1160 -750 1 1 {name=C6 model=cap_var_lvt W=25 L=25 VM=1 spiceprefix=X}
C {devices/gnd.sym} 1080 -710 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1140 -710 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 650 -740 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1110 -750 1 0 {name=l3 sig_type=std_logic lab=vcntrl

}
