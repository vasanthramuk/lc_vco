v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1110 -570 -1090 -570 {
lab=vout_p}
N -1090 -570 -1020 -650 {
lab=vout_p}
N -1020 -650 -990 -650 {
lab=vout_p}
N -990 -650 -990 -600 {
lab=vout_p}
N -1050 -570 -1030 -570 {
lab=vout_m}
N -1130 -650 -1050 -570 {
lab=vout_m}
N -1150 -650 -1130 -650 {
lab=vout_m}
N -1150 -650 -1150 -600 {
lab=vout_m}
N -1150 -540 -1150 -510 {
lab=vp}
N -1150 -510 -990 -510 {
lab=vp}
N -990 -540 -990 -510 {
lab=vp}
N -1150 -680 -1150 -650 {
lab=vout_m}
N -1260 -650 -1150 -650 {
lab=vout_m}
N -990 -650 -880 -650 {
lab=vout_p}
N -1150 -910 -990 -910 {
lab=VDD}
N -1070 -950 -1070 -910 {
lab=VDD}
N -1530 -720 -1530 -700 {
lab=GND}
N -1530 -800 -1530 -780 {
lab=VDD}
N -990 -910 -990 -890 {
lab=VDD}
N -1150 -910 -1150 -890 {
lab=VDD}
N -1150 -830 -1150 -810 {
lab=vout_m}
N -530 -830 -530 -810 {
lab=vcntrl}
N -530 -750 -530 -730 {
lab=GND}
N -1150 -810 -1150 -680 {
lab=vout_m}
N -1090 -710 -1050 -710 {
lab=vcntrl}
N -1470 -650 -1320 -650 {
lab=vout_m}
N -1470 -650 -1470 -640 {
lab=vout_m}
N -1320 -650 -1260 -650 {
lab=vout_m}
N -990 -570 -960 -570 {
lab=vp}
N -960 -570 -960 -510 {
lab=vp}
N -990 -510 -960 -510 {
lab=vp}
N -1190 -570 -1150 -570 {
lab=vp}
N -1190 -570 -1190 -510 {
lab=vp}
N -1190 -510 -1150 -510 {
lab=vp}
N -1150 -820 -1100 -820 {
lab=vout_m}
N -1070 -900 -1070 -840 {
lab=VDD}
N -1070 -910 -1070 -900 {
lab=VDD}
N -1040 -820 -990 -820 {
lab=#net1}
N -990 -830 -990 -710 {
lab=#net1}
N -1260 -320 -1230 -320 {
lab=GND}
N -1260 -320 -1260 -270 {
lab=GND}
N -1260 -270 -1230 -270 {
lab=GND}
N -1230 -290 -1230 -270 {
lab=GND}
N -1170 -320 -1150 -320 {
lab=#net2}
N -1150 -380 -1150 -320 {
lab=#net2}
N -1230 -380 -1170 -380 {
lab=#net2}
N -1230 -380 -1230 -350 {
lab=#net2}
N -1150 -320 -1110 -320 {
lab=#net2}
N -1070 -290 -1070 -270 {
lab=GND}
N -1070 -400 -1070 -350 {
lab=vp}
N -1070 -320 -1040 -320 {
lab=GND}
N -1040 -320 -1040 -280 {
lab=GND}
N -1070 -270 -1040 -270 {
lab=GND}
N -1040 -280 -1040 -270 {
lab=GND}
N -1190 -320 -1170 -320 {
lab=#net2}
N -1170 -380 -1150 -380 {
lab=#net2}
N -1230 -440 -1230 -380 {
lab=#net2}
N -1230 -540 -1230 -500 {
lab=VDD}
N -1070 -510 -1070 -400 {
lab=vp}
C {devices/code.sym} -770 -770 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/vdd.sym} -1070 -950 0 0 {name=l1 lab=VDD}
C {devices/lab_pin.sym} -910 -650 1 0 {name=l3 sig_type=std_logic lab=vout_p}
C {devices/lab_pin.sym} -1210 -650 1 0 {name=l4 sig_type=std_logic lab=vout_m}
C {devices/lab_pin.sym} -1040 -510 3 0 {name=l5 sig_type=std_logic lab=vp}
C {devices/vsource.sym} -1530 -750 0 0 {name=V2 value="pwl(0 0 1n 1.8)"}
C {devices/vsource.sym} -530 -780 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} -530 -730 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -530 -820 0 0 {name=l7 sig_type=std_logic lab=vcntrl

}
C {devices/vdd.sym} -1530 -800 0 0 {name=l8 lab=VDD}
C {sky130_fd_pr/cap_var_lvt.sym} -1120 -710 3 0 {name=C5 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {sky130_fd_pr/cap_var_lvt.sym} -1020 -710 1 1 {name=C6 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/gnd.sym} -1100 -670 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} -1040 -670 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} -1530 -700 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -1070 -710 1 0 {name=l12 sig_type=std_logic lab=vcntrl

}
C {devices/isource.sym} -1470 -610 0 0 {name=I1 value="pwl(0 0 1n 1n 1.1n 1n 1.2n 0)"}
C {devices/gnd.sym} -1470 -580 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -1010 -570 0 0 {name=M1
L=1
W=16
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
C {sky130_fd_pr/nfet_01v8.sym} -1130 -570 0 1 {name=M2
L=1
W=16
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
C {sky130_fd_pr/cap_mim_m3_1.sym} -1150 -860 0 0 {name=C1 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -990 -860 0 0 {name=C2 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
C {symbols/ind_05.sym} -1070 -820 1 0 {name=L14
body=GND
model=ind_05_220
spiceprefix=X
}
C {devices/vsource.sym} -990 -680 0 0 {name=Vtest value=0}
C {sky130_fd_pr/nfet_01v8.sym} -1090 -320 0 0 {name=M3
L=1
W=27
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
C {sky130_fd_pr/nfet_01v8.sym} -1210 -320 0 1 {name=M4
L=1
W=10.8
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
C {devices/gnd.sym} -1230 -270 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -1070 -270 0 0 {name=l2 lab=GND}
C {devices/isource.sym} -1230 -470 0 0 {name=I2 value=0.4m}
C {devices/lab_pin.sym} -1230 -530 0 0 {name=l8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -860 -590 0 0 {name=SPICE2 only_toplevel=false 
value=
"
.control
let ctrl=1.8
while ctrl ge 1.8
	tran 1p 1000n 700n
	let diff=(v(vout_p)-v(vout_m))
	*plot v(vout_p)
	plot diff
	
	let vcap = 1.8-ctrl
	echo ctrl is $&ctrl. vcap is $&vcap
	meas tran tperiod TRIG diff VAL=0 CROSS=5 TARG diff VAL=0 CROSS=7
	let freq = 1/tperiod
	echo frequency is $&freq
	*meas tran vpp TRIG diff VAL=0 CROSS=7 TARG diff VAL=0 CROSS=11
	*echo vpp is $&vpp
	plot vp
	plot (vout_m+vout_p)/2
	plot vout_m
	plot vout_p
	plot i(Vtest)

	let ctrl = ctrl-1.8
	alter v3 dc = ctrl
end
save all

.endc
"}
