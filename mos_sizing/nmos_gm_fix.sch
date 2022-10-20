v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 500 20 520 20 {
lab=vx}
N 520 20 520 50 {
lab=vx}
N 500 50 520 50 {
lab=vx}
N 500 50 500 90 {
lab=vx}
N 500 -60 500 -10 {
lab=#net1}
N 500 150 500 160 {
lab=GND}
N 560 -50 560 -40 {
lab=GND}
N 500 -110 500 -60 {
lab=#net1}
N 500 -110 560 -110 {
lab=#net1}
N 410 20 460 20 {
lab=#net2}
N 410 20 410 30 {
lab=#net2}
N 410 90 410 100 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 480 20 0 0 {name=M1
L=0.15
W=100
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
C {devices/isource.sym} 500 120 0 0 {name=I1 value=2.5m}
C {devices/gnd.sym} 500 160 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 560 -80 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 560 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 410 60 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} 410 100 0 0 {name=l1 lab=GND}
C {devices/code.sym} 770 -110 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/code_shown.sym} 950 -170 0 0 {name=SPICE1 only_toplevel=false 
value=
"
.control
op
show all
print vx
.endc
"}
C {devices/lab_pin.sym} 500 70 0 0 {name=l1 sig_type=std_logic lab=vx}
