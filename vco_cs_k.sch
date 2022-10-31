v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 8960 5110 8980 5110 {
lab=vout_p}
N 8980 5110 9050 5030 {
lab=vout_p}
N 9050 5030 9080 5030 {
lab=vout_p}
N 9080 5030 9080 5080 {
lab=vout_p}
N 9020 5110 9040 5110 {
lab=vout_m}
N 8940 5030 9020 5110 {
lab=vout_m}
N 8920 5030 8940 5030 {
lab=vout_m}
N 8920 5030 8920 5080 {
lab=vout_m}
N 8920 5140 8920 5170 {
lab=vp}
N 8920 5170 9080 5170 {
lab=vp}
N 9080 5140 9080 5170 {
lab=vp}
N 8920 5000 8920 5030 {
lab=vout_m}
N 8810 5030 8920 5030 {
lab=vout_m}
N 9080 5030 9190 5030 {
lab=vout_p}
N 8920 4770 9080 4770 {
lab=VDD}
N 9000 4730 9000 4770 {
lab=VDD}
N 8540 4960 8540 4980 {
lab=GND}
N 8540 4880 8540 4900 {
lab=VDD}
N 9080 4770 9080 4790 {
lab=VDD}
N 8920 4770 8920 4790 {
lab=VDD}
N 8920 4850 8920 4870 {
lab=vout_m}
N 9540 4850 9540 4870 {
lab=vcntrl}
N 9540 4930 9540 4950 {
lab=GND}
N 8920 4870 8920 5000 {
lab=vout_m}
N 8980 4970 9020 4970 {
lab=vcntrl}
N 8600 5030 8750 5030 {
lab=vout_m}
N 8600 5030 8600 5040 {
lab=vout_m}
N 8750 5030 8810 5030 {
lab=vout_m}
N 9080 5110 9110 5110 {
lab=vp}
N 9110 5110 9110 5170 {
lab=vp}
N 9080 5170 9110 5170 {
lab=vp}
N 8880 5110 8920 5110 {
lab=vp}
N 8880 5110 8880 5170 {
lab=vp}
N 8880 5170 8920 5170 {
lab=vp}
N 8920 4860 8970 4860 {
lab=vout_m}
N 9000 4780 9000 4840 {
lab=VDD}
N 9000 4770 9000 4780 {
lab=VDD}
N 9030 4860 9080 4860 {
lab=#net1}
N 9080 4850 9080 4970 {
lab=#net1}
N 8810 5360 8840 5360 {
lab=GND}
N 8810 5360 8810 5410 {
lab=GND}
N 8810 5410 8840 5410 {
lab=GND}
N 8840 5390 8840 5410 {
lab=GND}
N 8900 5360 8920 5360 {
lab=#net2}
N 8920 5300 8920 5360 {
lab=#net2}
N 8840 5300 8900 5300 {
lab=#net2}
N 8840 5300 8840 5330 {
lab=#net2}
N 8920 5360 8960 5360 {
lab=#net2}
N 9000 5390 9000 5410 {
lab=GND}
N 9000 5280 9000 5330 {
lab=vp}
N 9000 5360 9030 5360 {
lab=GND}
N 9030 5360 9030 5400 {
lab=GND}
N 9000 5410 9030 5410 {
lab=GND}
N 9030 5400 9030 5410 {
lab=GND}
N 8880 5360 8900 5360 {
lab=#net2}
N 8900 5300 8920 5300 {
lab=#net2}
N 8840 5240 8840 5300 {
lab=#net2}
N 8840 5140 8840 5180 {
lab=VDD}
N 9000 5170 9000 5280 {
lab=vp}
C {devices/code.sym} 9300 4910 0 0 {name=LIBS only_toplevel=false value=
"
.option wnflag = 1
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__ind_05_220.model.spice
.param mc_mm_switch=0
"
}
C {devices/vdd.sym} 9000 4730 0 0 {name=l1 lab=VDD}
C {devices/lab_pin.sym} 9160 5030 1 0 {name=l3 sig_type=std_logic lab=vout_p}
C {devices/lab_pin.sym} 8860 5030 1 0 {name=l4 sig_type=std_logic lab=vout_m}
C {devices/lab_pin.sym} 9030 5170 3 0 {name=l5 sig_type=std_logic lab=vp}
C {devices/vsource.sym} 8540 4930 0 0 {name=V2 value="pwl(0 0 1n 1.8)"}
C {devices/vsource.sym} 9540 4900 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} 9540 4950 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 9540 4860 0 0 {name=l7 sig_type=std_logic lab=vcntrl

}
C {devices/vdd.sym} 8540 4880 0 0 {name=l8 lab=VDD}
C {sky130_fd_pr/cap_var_lvt.sym} 8950 4970 3 0 {name=C5 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {sky130_fd_pr/cap_var_lvt.sym} 9050 4970 1 1 {name=C6 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/gnd.sym} 8970 5010 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 9030 5010 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 8540 4980 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 9000 4970 1 0 {name=l12 sig_type=std_logic lab=vcntrl

}
C {devices/isource.sym} 8600 5070 0 0 {name=I1 value="pwl(0 0 1n 1n 1.1n 1n 1.2n 0)"}
C {devices/gnd.sym} 8600 5100 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 9060 5110 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 8940 5110 0 1 {name=M2
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 8920 4820 0 0 {name=C1 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 9080 4820 0 0 {name=C2 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
C {symbols/ind_05.sym} 9000 4860 1 0 {name=L14
body=GND
model=ind_05_220
spiceprefix=X
}
C {devices/vsource.sym} 9080 5000 0 0 {name=Vtest value=0}
C {sky130_fd_pr/nfet_01v8.sym} 8980 5360 0 0 {name=M3
L=1
W=26
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
C {sky130_fd_pr/nfet_01v8.sym} 8860 5360 0 1 {name=M4
L=1
W=13
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
C {devices/gnd.sym} 8840 5410 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 9000 5410 0 0 {name=l14 lab=GND}
C {devices/isource.sym} 8840 5210 0 0 {name=I2 value=1m}
C {devices/lab_pin.sym} 8840 5150 0 0 {name=l15 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 9200 5100 0 0 {name=SPICE2 only_toplevel=false 
value=
"
.control

let ctrl=0.8
let step=0.01
let size=(1/step)
let i=0
let f=vector(size)
let ct=vector(size)
while ctrl le 1.8
	alter v3 dc = ctrl
	tran 1p 50n 
	let diff=(v(vout_p)-v(vout_m))
	
	

	meas tran tperiod TRIG diff VAL=0 CROSS=8 TARG diff VAL=0 CROSS=10
	let freq = 1/tperiod
	echo frequency is $&freq and vctrl is $&ctrl
	let f[i]=freq
	let ct[i]=ctrl
	let ctrl=step+ctrl
	let i=i+1
	
end
plot f vs ct
save all

.endc
"}
