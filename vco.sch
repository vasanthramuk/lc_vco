v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1070 -610 1090 -610 {
lab=#net1}
N 1090 -610 1160 -690 {
lab=#net1}
N 1160 -690 1190 -690 {
lab=#net1}
N 1190 -690 1190 -640 {
lab=#net1}
N 1130 -610 1150 -610 {
lab=#net2}
N 1050 -690 1130 -610 {
lab=#net2}
N 1030 -690 1050 -690 {
lab=#net2}
N 1030 -690 1030 -640 {
lab=#net2}
N 1030 -580 1030 -550 {
lab=#net3}
N 1030 -550 1190 -550 {
lab=#net3}
N 1190 -580 1190 -550 {
lab=#net3}
N 1110 -550 1110 -510 {
lab=#net3}
N 1110 -520 1110 -510 {
lab=#net3}
N 1190 -720 1190 -690 {
lab=#net1}
N 1030 -720 1030 -690 {
lab=#net2}
N 920 -690 1030 -690 {
lab=#net2}
N 1190 -690 1300 -690 {
lab=#net1}
N 1030 -840 1030 -780 {
lab=Vdd}
N 1190 -840 1190 -780 {
lab=Vdd}
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
N 1110 -840 1110 -820 {}
N 1140 -800 1190 -800 {}
N 1030 -800 1080 -800 {}
C {devices/code.sym} 350 -770 0 0 {name=SPICE only_toplevel=false value=
"
.option wnflag = 1
.lib ~/Documents/tools/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.param mc_mm_switch=0
*.tran 100n 100u
*.ac dec 100k 10G
.dc vin 0 1.8 0.02

.control
alter m.XM3.msky130_fd_pr__pfet_01v8 w = [ 1 2 3 4 5 ]
.endc

*.op
.save all
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
C {devices/lab_pin.sym} 1110 -870 0 0 {name=l1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 1110 -480 0 0 {name=I0 value=1m}
C {devices/vsource.sym} 730 -570 0 0 {name=V1 value=3}
C {devices/lab_pin.sym} 730 -610 0 0 {name=l1 sig_type=std_logic lab=vdd
}
C {devices/vdd.sym} 1110 -880 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 730 -520 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 730 -530 0 0 {name=l1 sig_type=std_logic lab=gnd}
C {devices/capa.sym} 1030 -750 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1190 -750 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1110 -420 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1110 -430 0 0 {name=l1 sig_type=std_logic lab=gnd}
C {symbols/ind_05.sym} 1110 -800 1 0 {name=L1
body=GND
model=ind_05_220
spiceprefix=X
}
