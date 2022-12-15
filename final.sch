v {xschem version=3.1.0 file_version=1.2
}
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
N 9080 4770 9080 4790 {
lab=VDD}
N 8920 4770 8920 4790 {
lab=VDD}
N 8920 4850 8920 4870 {
lab=vout_m}
N 8920 4870 8920 5000 {
lab=vout_m}
N 8980 4970 9020 4970 {
lab=vcntrl}
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
lab=curgate}
N 8920 5300 8920 5360 {
lab=curgate}
N 8840 5300 8900 5300 {
lab=idealcs}
N 8840 5300 8840 5330 {
lab=idealcs}
N 8920 5360 8960 5360 {
lab=curgate}
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
lab=idealcs}
N 8900 5300 8920 5300 {
lab=idealcs}
N 8840 5240 8840 5300 {
lab=idealcs}
N 9000 5170 9000 5280 {
lab=vp}
N 9080 4970 9080 5030 {}
C {devices/vdd.sym} 9000 4730 0 0 {name=l1 lab=VDD}
C {devices/lab_pin.sym} 9160 5030 1 0 {name=l3 sig_type=std_logic lab=vout_p}
C {devices/lab_pin.sym} 8860 5030 1 0 {name=l4 sig_type=std_logic lab=vout_m}
C {devices/lab_pin.sym} 9030 5170 3 0 {name=l5 sig_type=std_logic lab=vp}
C {sky130_fd_pr/cap_var_lvt.sym} 8950 4970 3 0 {name=C5 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {sky130_fd_pr/cap_var_lvt.sym} 9050 4970 1 1 {name=C6 model=cap_var_lvt W=10 L=0.5 VM=1 spiceprefix=X}
C {devices/gnd.sym} 8970 5010 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 9030 5010 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 9000 4970 1 0 {name=l12 sig_type=std_logic lab=vcntrl

}
C {sky130_fd_pr/nfet_01v8.sym} 9060 5110 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 8940 5110 0 1 {name=M2
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 8920 4820 0 0 {name=C1 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 9080 4820 0 0 {name=C2 model=cap_mim_m3_1 W=32 L=32 MF=1 spiceprefix=X}
C {symbols/ind_05.sym} 9000 4860 1 0 {name=L14
body=GND
model=ind_05_220
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 8980 5360 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 8860 5360 0 1 {name=M4
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
C {devices/gnd.sym} 8840 5410 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 9000 5410 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 8840 5250 0 0 {name=l1 sig_type=std_logic lab=idealcs}
C {devices/lab_pin.sym} 8920 5360 3 0 {name=l1 sig_type=std_logic lab=curgate}
