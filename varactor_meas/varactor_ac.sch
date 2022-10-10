v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 10 120 10 140 {
lab=GND}
N 10 40 10 60 {
lab=vc}
N 10 20 10 40 {
lab=vc}
N 10 20 230 20 {
lab=vc}
N 230 20 230 30 {
lab=vc}
N 230 30 230 40 {
lab=vc}
N 230 40 230 70 {
lab=vc}
N 190 120 190 160 {
lab=GND}
N 230 130 270 130 {
lab=#net1}
N 270 130 270 160 {
lab=#net1}
N 190 160 190 170 {
lab=GND}
N 270 220 270 230 {
lab=GND}
C {devices/gnd.sym} 190 170 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 590 -100 0 0 {name=SPICE only_toplevel=false 
value=
"
.control
foreach vctrl 0 0.8 1.8
	echo
	echo
	echo Vctrl is $vctrl
	alter @V2[dc] = $vctrl
	ac lin 10000 1G 2G
	let Z = -1/i(V2)
	*plot 20*log10(abs(Z)) title db_of_Z
	*plot phase(Z)*180/pi ylimit -100 100 title phase_of_Z

	**C measured at 1 MHz


	let end=length(frequency)-1
	let Cl = 1/(2*pi*abs(Z[0])*frequency[0])
	let Ch = 1/(2*pi*abs(Z[end])*frequency[end])
	print Cl,Ch

end
save all
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
C {devices/vsource.sym} 10 90 0 0 {name=V2 value="2 ac 1"}
C {devices/lab_pin.sym} 140 20 1 0 {name=l1 sig_type=std_logic lab=vc
}
C {devices/gnd.sym} 10 140 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/cap_var_lvt.sym} 230 100 0 0 {name=C2 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/vsource.sym} 270 190 0 0 {name=V1 value=0}
C {devices/gnd.sym} 270 230 0 0 {name=l2 lab=GND}
