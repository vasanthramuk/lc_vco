v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1070 -610 1090 -610 {
lab=vout_p}
N 1090 -610 1160 -690 {
lab=vout_p}
N 1160 -690 1190 -690 {
lab=vout_p}
N 1190 -690 1190 -640 {
lab=vout_p}
N 1130 -610 1150 -610 {
lab=vout_m}
N 1050 -690 1130 -610 {
lab=vout_m}
N 1030 -690 1050 -690 {
lab=vout_m}
N 1030 -690 1030 -640 {
lab=vout_m}
N 1030 -580 1030 -550 {
lab=vp}
N 1030 -550 1190 -550 {
lab=vp}
N 1190 -580 1190 -550 {
lab=vp}
N 1110 -520 1110 -510 {
lab=vp}
N 1190 -720 1190 -690 {
lab=vout_p}
N 1030 -720 1030 -690 {
lab=vout_m}
N 920 -690 1030 -690 {
lab=vout_m}
N 1190 -690 1300 -690 {
lab=vout_p}
N 1030 -950 1190 -950 {
lab=VDD}
N 1110 -990 1110 -950 {
lab=VDD}
N 650 -760 650 -740 {
lab=GND}
N 650 -840 650 -820 {
lab=VDD}
N 1110 -450 1110 -420 {
lab=GND}
N 1190 -950 1190 -930 {
lab=VDD}
N 1030 -950 1030 -930 {
lab=VDD}
N 1190 -870 1190 -850 {
lab=vout_p}
N 1030 -870 1030 -850 {
lab=vout_m}
N 1110 -550 1110 -520 {
lab=vp}
N 1650 -870 1650 -850 {
lab=vcntrl}
N 1650 -790 1650 -770 {
lab=GND}
N 1030 -850 1030 -720 {
lab=vout_m}
N 1190 -850 1190 -720 {
lab=vout_p}
N 1090 -750 1130 -750 {
lab=vcntrl}
N 710 -690 860 -690 {
lab=vout_m}
N 710 -690 710 -680 {
lab=vout_m}
N 860 -690 920 -690 {
lab=vout_m}
N 1190 -610 1220 -610 {
lab=vp}
N 1220 -610 1220 -550 {
lab=vp}
N 1190 -550 1220 -550 {
lab=vp}
N 990 -610 1030 -610 {
lab=vp}
N 990 -610 990 -550 {
lab=vp}
N 990 -550 1030 -550 {
lab=vp}
N 1140 -860 1190 -860 {
lab=vout_p}
N 1030 -860 1080 -860 {
lab=vout_m}
N 1110 -940 1110 -880 {
lab=VDD}
N 1110 -950 1110 -940 {
lab=VDD}
C {devices/code.sym} 1410 -810 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/isource.sym} 1110 -480 0 0 {name=I0 value=2m}
C {devices/vdd.sym} 1110 -990 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 1110 -420 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1270 -690 1 0 {name=l3 sig_type=std_logic lab=vout_p}
C {devices/lab_pin.sym} 970 -690 1 0 {name=l3 sig_type=std_logic lab=vout_m}
C {devices/lab_pin.sym} 1140 -550 3 0 {name=l3 sig_type=std_logic lab=vp}
C {devices/vsource.sym} 650 -790 0 0 {name=V2 value="pwl(0 0 1n 1.8)"}
C {devices/vsource.sym} 1650 -820 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} 1650 -770 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1650 -860 0 0 {name=l3 sig_type=std_logic lab=vcntrl

}
C {devices/vdd.sym} 650 -840 0 0 {name=l3 lab=VDD}
C {sky130_fd_pr/cap_var_lvt.sym} 1060 -750 3 0 {name=C5 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {sky130_fd_pr/cap_var_lvt.sym} 1160 -750 1 1 {name=C6 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/gnd.sym} 1080 -710 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1140 -710 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 650 -740 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1110 -750 1 0 {name=l3 sig_type=std_logic lab=vcntrl

}
C {devices/isource.sym} 710 -650 0 0 {name=I1 value="pwl(0 0 1n 1n 1.1n 1n 1.2n 0)"}
C {devices/gnd.sym} 710 -620 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 1170 -610 0 0 {name=M1
L=1
W=10
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
C {sky130_fd_pr/nfet_01v8.sym} 1050 -610 0 1 {name=M2
L=1
W=10
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 1030 -900 0 0 {name=C1 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1190 -900 0 0 {name=C2 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
C {symbols/ind_05.sym} 1110 -860 1 0 {name=L1
body=GND
model=ind_05_220
spiceprefix=X
}
C {devices/code_shown.sym} 1380 -630 0 0 {name=SPICE1 only_toplevel=false 
value=
"
.control
let ctrl=1.8
while ctrl ge 0
	tran 0.1p 500n 480n
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

	let ctrl = ctrl-1.8
	alter v3 dc = ctrl
end
save all

.endc
"}
