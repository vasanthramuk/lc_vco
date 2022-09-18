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
N 1110 -550 1110 -510 {
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
N 650 -760 650 -740 {
lab=gnd}
N 650 -840 650 -820 {
lab=vdd}
N 1110 -450 1110 -420 {
lab=gnd}
N 1010 -610 1030 -610 {
lab=gnd}
N 1010 -610 1010 -550 {
lab=gnd}
N 1190 -610 1210 -610 {
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
N 1210 -610 1210 -550 {
lab=gnd}
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
W=1
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
W=1
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
C {devices/lab_pin.sym} 1110 -980 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 1110 -480 0 0 {name=I0 value=5m}
C {devices/vsource.sym} 650 -790 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} 650 -830 0 0 {name=l1 sig_type=std_logic lab=vdd
}
C {devices/vdd.sym} 1110 -990 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 650 -740 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 650 -750 0 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/capa.sym} 1030 -900 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1190 -900 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1110 -420 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1110 -430 0 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/code_shown.sym} 1420 -640 0 0 {name=SPICE only_toplevel=false 
value=
"
.control
tran 100p 50n
run
save all
plot v(vout+)-v(vout-)
plot vp
.endc
"}
C {devices/lab_pin.sym} 1270 -690 1 0 {name=l2 sig_type=std_logic lab=vout+}
C {devices/lab_pin.sym} 970 -690 1 0 {name=l2 sig_type=std_logic lab=vout-}
C {devices/lab_pin.sym} 1010 -560 0 0 {name=l2 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1210 -560 2 0 {name=l2 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1150 -550 3 0 {name=l2 sig_type=std_logic lab=vp}
C {devices/ind.sym} 1070 -790 3 0 {name=L1
m=1
value=2.48n
footprint=1206
device=inductor}
C {devices/ind.sym} 1150 -790 3 0 {name=L2
m=1
value=2.48n
footprint=1206
device=inductor}
