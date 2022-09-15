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
lab=#net1}
N 1030 -550 1190 -550 {
lab=#net1}
N 1190 -580 1190 -550 {
lab=#net1}
N 1110 -550 1110 -510 {
lab=#net1}
N 1110 -520 1110 -510 {
lab=#net1}
N 1190 -720 1190 -690 {
lab=vout+}
N 1030 -720 1030 -690 {
lab=vout-}
N 920 -690 1030 -690 {
lab=vout-}
N 1190 -690 1300 -690 {
lab=vout+}
N 1030 -840 1190 -840 {
lab=Vdd}
N 1110 -880 1110 -840 {
lab=VDD}
N 730 -540 730 -520 {
lab=gnd}
N 730 -620 730 -600 {
lab=vdd}
N 1110 -450 1110 -420 {
lab=gnd}
N 1010 -610 1030 -610 {
lab=gnd}
N 1010 -610 1010 -550 {
lab=gnd}
N 1190 -610 1210 -610 {
lab=gnd}
N 1190 -840 1190 -820 {
lab=Vdd}
N 1030 -840 1030 -820 {
lab=Vdd}
N 1140 -740 1190 -740 {
lab=vout+}
N 1190 -760 1190 -740 {
lab=vout+}
N 1190 -740 1190 -720 {
lab=vout+}
N 1030 -740 1080 -740 {
lab=vout-}
N 1030 -760 1030 -740 {
lab=vout-}
N 1030 -760 1030 -740 {
lab=vout-}
N 1030 -740 1030 -720 {
lab=vout-}
N 1110 -830 1110 -760 {
lab=Vdd}
N 1110 -840 1110 -830 {
lab=Vdd}
N 930 -650 1030 -650 {
lab=vout-}
N 930 -590 930 -550 {
lab=gnd}
N 1210 -610 1210 -550 {
lab=gnd}
C {devices/code.sym} 1410 -810 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {sky130_fd_pr/nfet_01v8.sym} 1170 -610 0 0 {name=M1
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1050 -610 0 1 {name=M2
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1110 -870 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 1110 -480 0 0 {name=I0 value=5m}
C {devices/vsource.sym} 730 -570 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} 730 -610 0 0 {name=l1 sig_type=std_logic lab=vdd
}
C {devices/vdd.sym} 1110 -880 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 730 -520 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 730 -530 0 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/capa.sym} 1030 -790 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1190 -790 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1110 -420 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1110 -430 0 0 {name=l1 sig_type=std_logic lab=gnd}
C {symbols/ind_05.sym} 1110 -740 1 0 {name=L1
body=GND
model=ind_05_220
spiceprefix=X
}
C {devices/code_shown.sym} 1420 -640 0 0 {name=SPICE only_toplevel=false 
value=
"
.tran 100p 50n
.save all
"}
C {devices/lab_pin.sym} 1270 -690 1 0 {name=l2 sig_type=std_logic lab=vout+}
C {devices/lab_pin.sym} 970 -690 1 0 {name=l2 sig_type=std_logic lab=vout-}
C {devices/isource.sym} 930 -620 0 0 {name=I1 value= "PULSE(0 1 10n 1n 1n 5n)"}
C {devices/lab_pin.sym} 930 -560 0 0 {name=l2 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1010 -560 0 0 {name=l2 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1210 -560 2 0 {name=l2 sig_type=std_logic lab=gnd}
