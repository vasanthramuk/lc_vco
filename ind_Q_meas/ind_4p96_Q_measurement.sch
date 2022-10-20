v {xschem version=3.1.0 file_version=1.2 
}
G {}
K {}
V {}
S {}
E {}
N 560 -180 760 -180 {
lab=positive}
N 820 -180 1020 -180 {
lab=negative}
N 790 -160 790 -70 {
lab=GND}
N 690 -180 690 -160 {
lab=positive}
N 920 -180 920 -160 {
lab=negative}
N 690 -100 690 -80 {
lab=GND}
N 690 -80 790 -80 {
lab=GND}
N 790 -80 920 -80 {
lab=GND}
N 920 -100 920 -80 {
lab=GND}
N 550 -180 550 -100 {
lab=positive}
N 550 -180 560 -180 {
lab=positive}
N 550 -40 550 60 {
lab=negative}
N 1020 -180 1020 -30 {
lab=negative}
N 1020 -30 1020 30 {
lab=negative}
N 550 60 1020 60 {
lab=negative}
N 1020 30 1020 60 {
lab=negative}
C {devices/lab_pin.sym} 740 -180 1 0 {name=l2 sig_type=std_logic lab=positive
}
C {devices/code_shown.sym} -310 -330 0 0 {name=s1 only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice

.control
ac lin 100 1G 2G
plot 20*log(V(positive))

let Z=mag(v(positive))
let Zmax=maximum(Z)
let Z3dB=maximum(Z)/1.414
meas ac Fl when Z=Z3dB RISE=1
*Fl - lower 3dB freq

meas ac Fh when Z=Z3dB FALL=1
*Fh - higher 3dB freq

meas ac FC max_at Z
*Fc - resonating frequency

let Q=Fc/(Fh-Fl)

print Q

set filetype=ascii
save all
.endc
"}
C {../symbols/ind_05.sym} 790 -180 3 0 {name=L2
body=GND
model=ind_05_220
spiceprefix=X
}
C {devices/capa.sym} 690 -130 0 0 {name=C3
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 920 -130 0 0 {name=C4
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 790 -70 0 0 {name=l3 lab=GND}
C {devices/isource.sym} 550 -70 2 0 {name=I1 value="0 ac 1"}
C {devices/lab_pin.sym} 860 -180 1 0 {name=l3 sig_type=std_logic lab=negative
}
