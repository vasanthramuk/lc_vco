v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 30 230 40 {
lab=vsup}
N 230 40 230 70 {
lab=vsup}
N 230 130 230 170 {
lab=#net1}
N 230 230 230 240 {
lab=gnd}
N 340 30 340 70 {
lab=vsup}
N 230 30 340 30 {
lab=vsup}
N 340 130 340 160 {
lab=gnd}
N 340 140 420 140 {
lab=gnd}
N 420 90 420 140 {
lab=gnd}
N 340 30 420 30 {
lab=vsup}
N 230 240 230 270 {
lab=gnd}
N 180 270 230 270 {
lab=GND}
N 180 220 180 270 {
lab=GND}
N 180 220 190 220 {
lab=GND}
N 420 30 490 30 {
lab=vsup}
N 490 90 490 140 {
lab=gnd}
N 420 140 490 140 {
lab=gnd}
C {devices/code.sym} 570 -270 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/gnd.sym} 230 270 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 230 30 0 0 {name=l2 sig_type=std_logic lab=vsup}
C {devices/lab_pin.sym} 340 150 0 0 {name=l2 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 230 240 0 0 {name=l2 sig_type=std_logic lab=gnd}
C {devices/isource.sym} 420 60 2 0 {name=I0 value="ac 1"}
C {devices/code_shown.sym} 590 -90 0 0 {name=SPICE only_toplevel=false value=
"
.ac dec 100 1meg 100G
.control
run 
plot 10*log10(mag(v(vsup)))
.endc
"}
C {sky130_fd_pr/cap_var_lvt.sym} 230 200 0 0 {name=C1 model=cap_var_lvt W=0.5 L=0.5 VM=1 spiceprefix=X}
C {devices/vsource.sym} 230 100 2 0 {name=V1 value=0}
C {devices/ind.sym} 340 100 0 0 {name=L1
m=1
value=100n
footprint=1206
device=inductor}
