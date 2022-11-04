v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 260 350 300 {
lab=#net1}
N 350 360 350 370 {
lab=GND}
N 350 370 350 400 {
lab=GND}
N 300 400 350 400 {
lab=GND}
N 300 350 300 400 {
lab=GND}
N 300 350 310 350 {
lab=GND}
N 710 260 710 300 {
lab=#net2}
N 710 360 710 370 {
lab=GND}
N 710 370 710 400 {
lab=GND}
N 660 400 710 400 {
lab=GND}
N 660 350 660 400 {
lab=GND}
N 660 350 670 350 {
lab=GND}
N 500 180 500 250 {
lab=GND}
N 410 160 470 160 {
lab=vpos}
N 350 160 410 160 {
lab=vpos}
N 530 160 610 160 {
lab=vneg}
N 410 220 410 240 {
lab=GND}
N 410 240 500 240 {
lab=GND}
N 610 220 610 240 {
lab=GND}
N 500 240 610 240 {
lab=GND}
N 610 160 710 160 {
lab=vneg}
N 170 160 170 300 {
lab=vpos}
N 170 360 170 490 {
lab=vneg}
N 170 490 870 490 {
lab=vneg}
N 870 160 870 490 {
lab=vneg}
N 710 160 870 160 {
lab=vneg}
N 710 160 710 200 {
lab=vneg}
N 170 160 350 160 {
lab=vpos}
N 350 160 350 200 {
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
	set color0=white
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
C {devices/gnd.sym} 350 400 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/cap_var_lvt.sym} 350 330 0 0 {name=C5 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/vsource.sym} 350 230 2 0 {name=V1 value=1.8}
C {devices/gnd.sym} 710 400 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 780 160 1 0 {name=l4 sig_type=std_logic lab=vneg}
C {sky130_fd_pr/cap_var_lvt.sym} 710 330 0 0 {name=C6 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/vsource.sym} 710 230 2 0 {name=V3 value=1.8}
C {devices/gnd.sym} 500 250 0 0 {name=l3 lab=GND}
C {devices/isource.sym} 170 330 2 0 {name=I1 value="dc 0 ac 1"}
C {devices/lab_pin.sym} 280 160 1 0 {name=l4 sig_type=std_logic lab=vpos}
C {/home/luminatrix/Documents/designs/lc_vco/symbols/ind_05.sym} 500 160 3 0 {name=L1
body=GND
model=ind_05_220
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 410 190 0 0 {name=C1 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 610 190 0 0 {name=C2 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
