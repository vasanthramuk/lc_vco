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
lab=GND}
N 340 30 340 70 {
lab=vsup}
N 230 30 340 30 {
lab=vsup}
N 340 130 340 160 {
lab=GND}
N 340 140 420 140 {
lab=GND}
N 420 90 420 140 {
lab=GND}
N 340 30 420 30 {
lab=vsup}
N 230 240 230 270 {
lab=GND}
N 180 270 230 270 {
lab=GND}
N 180 220 180 270 {
lab=GND}
N 180 220 190 220 {
lab=GND}
N 420 30 490 30 {
lab=vsup}
N 490 90 490 140 {
lab=GND}
N 420 140 490 140 {
lab=GND}
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
C {devices/isource.sym} 420 60 2 0 {name=I0 value="dc 0 ac 1"}
C {sky130_fd_pr/cap_var_lvt.sym} 230 200 0 0 {name=C1 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/vsource.sym} 230 100 2 0 {name=V2 value=1.8}
C {devices/code_shown.sym} 960 -240 0 0 {name=SPICE1 only_toplevel=false 
value=
"
.control
	foreach ctrl 0 0.8 1.8
	alter @v2[dc]=$ctrl
	ac lin 100000 1400meg 1.8G
	let Z = mag(V(vsup))
	plot 20*log10(abs(Z)) title db_of_Z
	*plot phase(Z)*180/pi ylimit -100 100 title phase_of_Z

	**C measured at 1 MHz


	let end=length(frequency)-1
	let Zmax=maximum(Z)
	let Z3dB=maximum(Z)/1.414
	meas ac Fl when Z=Z3dB RISE=1
	*Fl - lower 3dB freq

	meas ac Fh when Z=Z3dB FALL=1
	*Fh - higher 3dB freq

	meas ac FC max_at Z

	echo ctrl is $ctrl:
	print FC
	*Fc - resonating frequency

	let Q=Fc/(Fh-Fl)

	print Q
	end
save all
.endc
"}
C {devices/capa.sym} 490 60 0 0 {name=C2
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 340 100 0 0 {name=L1
m=1
value=4.96n
footprint=1206
device=inductor}
C {devices/gnd.sym} 340 160 0 0 {name=l2 lab=GND}
