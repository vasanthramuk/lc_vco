v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 10 120 10 140 {
lab=GND}
N 10 40 10 60 {
lab=#net1}
N 10 20 10 40 {
lab=#net1}
N 230 20 230 30 {
lab=vc}
N 230 30 230 40 {
lab=vc}
N 230 40 230 70 {
lab=vc}
N 230 130 230 170 {
lab=GND}
N 190 120 190 160 {
lab=GND}
N 190 160 230 160 {
lab=GND}
N 10 20 60 20 {
lab=#net1}
N 120 20 140 20 {
lab=vc}
N 140 20 230 20 {
lab=vc}
C {devices/gnd.sym} 230 170 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 590 -100 0 0 {name=SPICE only_toplevel=false 
value=
"
.control
tran 10n 9u
plot vc
let cap = 100n/deriv(vc)
plot cap vs vc ylimit 0 0.3p
write
.endc
"}
C {devices/code.sym} 570 -270 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/lab_pin.sym} 140 20 1 0 {name=l1 sig_type=std_logic lab=vc
}
C {devices/gnd.sym} 10 140 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/cap_var_lvt.sym} 230 100 0 0 {name=C1 model=cap_var_lvt W=10 L=10 VM=1 spiceprefix=X}
C {devices/isource.sym} 10 90 2 0 {name=I0 value="pwl 0 0 1n 100n"}
C {devices/vsource.sym} 90 20 3 0 {name=V1 value=0}
