v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 500 20 520 20 {
lab=GND}
N 520 20 520 50 {
lab=GND}
N 500 50 520 50 {
lab=GND}
N 500 50 500 90 {
lab=GND}
N 500 -60 500 -10 {
lab=#net1}
N 500 150 500 160 {
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
N 620 -110 620 -40 {
lab=#net1}
N 560 -110 620 -110 {
lab=#net1}
N 620 20 620 70 {
lab=GND}
N 500 70 620 70 {
lab=GND}
N 500 90 500 150 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 480 20 0 0 {name=M1
L=0.15
W=3
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
C {devices/gnd.sym} 500 160 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 620 -10 0 0 {name=vds value=0.1}
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
C {devices/code_shown.sym} 950 -170 0 0 {name=SPICE only_toplevel=false 
value=
"
.control
dc vds 0 2 0.001
save all
plot -i(vds)
let x = deriv(-i(vds))
print x[2000]
.endc
"}
