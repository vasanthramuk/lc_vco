v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -90 70 -90 {
lab=GND}
N 40 -90 40 -40 {
lab=GND}
N 40 -40 70 -40 {
lab=GND}
N 70 -60 70 -40 {
lab=GND}
N 130 -90 150 -90 {
lab=#net1}
N 150 -150 150 -90 {
lab=#net1}
N 70 -150 130 -150 {
lab=#net1}
N 70 -150 70 -120 {
lab=#net1}
N 150 -90 190 -90 {
lab=#net1}
N 230 -60 230 -40 {
lab=GND}
N 230 -170 230 -120 {
lab=Vx}
N 230 -90 260 -90 {
lab=GND}
N 260 -90 260 -50 {
lab=GND}
N 230 -40 260 -40 {
lab=GND}
N 260 -50 260 -40 {
lab=GND}
N 110 -90 130 -90 {
lab=#net1}
N 130 -150 150 -150 {
lab=#net1}
N 70 -210 70 -150 {
lab=#net1}
N -200 -340 -200 -310 {
lab=VDD}
N -110 -340 -110 -310 {
lab=Vx}
N 70 -310 70 -270 {
lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 210 -90 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 90 -90 0 1 {name=M2
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
C {devices/gnd.sym} 70 -40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 230 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -110 -280 0 0 {name=V1 value=1}
C {devices/vsource.sym} -200 -280 0 0 {name=Vsup value=1.8}
C {devices/gnd.sym} -200 -250 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -110 -250 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -200 -330 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -110 -330 0 0 {name=l1 sig_type=std_logic lab=Vx}
C {devices/lab_pin.sym} 230 -150 0 0 {name=l1 sig_type=std_logic lab=Vx}
C {devices/code.sym} 400 -340 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/isource.sym} 70 -240 0 0 {name=I0 value=0.7m}
C {devices/lab_pin.sym} 70 -300 0 0 {name=l1 sig_type=std_logic lab=VDD}
