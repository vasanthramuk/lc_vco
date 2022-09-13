v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 360 -130 360 -90 {
lab=positive}
N 270 -60 340 -60 {
lab=center_tap}
N 360 -30 360 20 {
lab=GND}
N 130 -20 130 -10 {
lab=GND}
N 130 -130 130 -80 {
lab=positive}
N 130 -130 360 -130 {
lab=positive}
C {ind_05.sym} 360 -60 0 0 {name=L1
body=GND
model=ind_05_220
spiceprefix=X
}
C {devices/lab_pin.sym} 360 -120 0 0 {name=l2 sig_type=std_logic lab=positive
}
C {devices/lab_pin.sym} 290 -60 3 0 {name=l2 sig_type=std_logic lab=center_tap
}
C {devices/lab_pin.sym} 360 0 2 0 {name=l2 sig_type=std_logic lab=negative
}
C {devices/isource.sym} 130 -50 2 0 {name=Iin value="0 ac 1"}
C {devices/gnd.sym} 130 -10 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 360 20 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -310 -330 0 0 {name=s1 only_toplevel=false value="
.lib ~/tools/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/vakumar/tools/open_pdks/sky130/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.ac dec 100 10meg 10G
.control
run
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
.endc
"}
