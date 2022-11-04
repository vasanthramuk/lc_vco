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
lab=Vdd}
N 1110 -990 1110 -950 {
lab=VDD}
N 780 -790 780 -770 {
lab=gnd}
N 780 -870 780 -850 {
lab=vdd}
N 1110 -450 1110 -420 {
lab=gnd}
N 1190 -950 1190 -930 {
lab=Vdd}
N 1030 -950 1030 -930 {
lab=Vdd}
N 1190 -870 1190 -850 {
lab=vout+}
N 1190 -740 1190 -720 {
lab=vout+}
N 1030 -870 1030 -850 {
lab=vout-}
N 1030 -740 1030 -720 {
lab=vout-}
N 1030 -850 1030 -740 {
lab=vout-}
N 1190 -850 1190 -740 {
lab=vout+}
N 1100 -790 1120 -790 {
lab=Vdd}
N 1030 -790 1040 -790 {
lab=vout-}
N 1180 -790 1190 -790 {
lab=vout+}
N 1110 -950 1110 -790 {
lab=Vdd}
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
N 870 -630 870 -580 {
lab=gnd}
N 1300 -690 1340 -690 {
lab=vout+}
N 1340 -630 1340 -580 {
lab=gnd}
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
lab=Vdd}
N 960 -950 960 -940 {
lab=Vdd}
N 960 -880 960 -860 {
lab=vout-}
N 960 -860 1030 -860 {
lab=vout-}
N 1270 -950 1270 -940 {
lab=Vdd}
N 1270 -880 1270 -860 {
lab=vout+}
N 1190 -950 1270 -950 {
lab=Vdd}
N 1190 -860 1270 -860 {
lab=vout+}
N 780 -610 780 -590 {
lab=gnd}
N 780 -690 780 -670 {
lab=vout-}
N 780 -690 870 -690 {
lab=vout-}
N 1110 -550 1110 -520 {
lab=vp}
C {devices/code.sym} 1410 -810 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/lab_pin.sym} 1110 -980 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 1110 -480 0 0 {name=I0 value=1m}
C {devices/vsource.sym} 780 -820 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} 780 -860 0 0 {name=l1 sig_type=std_logic lab=vdd
}
C {devices/vdd.sym} 1110 -990 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 780 -770 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 780 -780 0 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/capa.sym} 1030 -900 0 0 {name=C1
m=1
value=0.8p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1190 -900 0 0 {name=C2
m=1
value=0.8p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1110 -420 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1110 -430 0 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/code_shown.sym} 1420 -640 0 0 {name=SPICE only_toplevel=false 
value=
"
.control
tran 50p 300n
run
save all
plot v(vout+)-v(vout-)
plot vp
.endc
"}
C {devices/lab_pin.sym} 1270 -690 1 0 {name=l2 sig_type=std_logic lab=vout+}
C {devices/lab_pin.sym} 970 -690 1 0 {name=l2 sig_type=std_logic lab=vout-}
C {devices/ind.sym} 1070 -790 3 0 {name=L1
m=1
value=4.96n
footprint=1206
device=inductor}
C {devices/ind.sym} 1150 -790 3 0 {name=L2
m=1
value=4.96n
footprint=1206
device=inductor}
C {devices/vccs.sym} 1030 -610 0 1 {name=G1 value=1e-2}
C {devices/vccs.sym} 1190 -610 0 0 {name=G2 value=1e-2}
C {devices/capa.sym} 870 -660 0 0 {name=C3
m=1
value=8.78f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1340 -660 0 0 {name=C4
m=1
value=8.78p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 870 -600 0 0 {name=l3 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1340 -600 0 0 {name=l3 sig_type=std_logic lab=gnd}
C {devices/res.sym} 960 -910 0 0 {name=R3
value=750
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1270 -910 0 1 {name=R4
value=750
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 780 -590 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 780 -600 0 0 {name=l5 sig_type=std_logic lab=gnd}
C {devices/isource.sym} 780 -640 0 0 {name=I1 value="PULSE( 0 1 0n 1n 1n 1n )"}
C {devices/lab_pin.sym} 1140 -550 3 0 {name=l3 sig_type=std_logic lab=vp}
C {devices/res.sym} 980 -600 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1260 -600 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
