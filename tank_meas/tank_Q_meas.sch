v {xschem version=3.1.0 file_version=1.2 
}
G {}
K {}
V {}
S {}
E {}
N 370 80 370 120 {
lab=#net1}
N 370 180 370 190 {
lab=GND}
N 370 190 370 220 {
lab=GND}
N 320 220 370 220 {
lab=GND}
N 320 170 320 220 {
lab=GND}
N 320 170 330 170 {
lab=GND}
N 730 80 730 120 {
lab=#net2}
N 730 180 730 190 {
lab=GND}
N 730 190 730 220 {
lab=GND}
N 680 220 730 220 {
lab=GND}
N 680 170 680 220 {
lab=GND}
N 680 170 690 170 {
lab=GND}
N 520 0 520 70 {
lab=GND}
N 430 -20 490 -20 {
lab=vpos}
N 370 -20 430 -20 {
lab=vpos}
N 550 -20 630 -20 {
lab=vneg}
N 430 40 430 60 {
lab=GND}
N 430 60 520 60 {
lab=GND}
N 630 40 630 60 {
lab=GND}
N 520 60 630 60 {
lab=GND}
N 630 -20 730 -20 {
lab=vneg}
N 190 -20 190 120 {
lab=vpos}
N 190 180 190 310 {
lab=vneg}
N 190 310 890 310 {
lab=vneg}
N 890 -20 890 310 {
lab=vneg}
N 730 -20 890 -20 {
lab=vneg}
N 730 -20 730 20 {
lab=vneg}
N 190 -20 370 -20 {
lab=vpos}
N 370 -20 370 20 {
lab=vpos}
C {devices/code.sym} 570 -270 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/code_shown.sym} 960 -240 0 0 {name=SPICE1 only_toplevel=false 
value=
"
.control
	foreach ctrl 0 0.8 1.8
	alter @v1[dc]=$ctrl
	alter @v3[dc]=$ctrl
	ac lin 1000000 1.3G 1.6G
	let Z = mag(V(vpos))
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
C {/home/vakumar/projects/lc_vco/symbols/ind_05.sym} 520 -20 3 0 {name=L2
body=GND
model=ind_05_220
spiceprefix=X
}
C {devices/capa.sym} 430 10 0 0 {name=C3
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 630 10 0 0 {name=C4
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 370 220 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/cap_var_lvt.sym} 370 150 0 0 {name=C5 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/vsource.sym} 370 50 2 0 {name=V1 value=1.8}
C {devices/gnd.sym} 730 220 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 800 -20 1 0 {name=l4 sig_type=std_logic lab=vneg}
C {sky130_fd_pr/cap_var_lvt.sym} 730 150 0 0 {name=C6 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/vsource.sym} 730 50 2 0 {name=V3 value=1.8}
C {devices/gnd.sym} 520 70 0 0 {name=l3 lab=GND}
C {devices/isource.sym} 190 150 2 0 {name=I1 value="dc 0 ac 1"}
C {devices/lab_pin.sym} 300 -20 1 0 {name=l4 sig_type=std_logic lab=vpos}
