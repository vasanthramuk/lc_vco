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
N 8810 5030 8920 5030 {
lab=vout_m}
N 9080 5030 9190 5030 {
lab=vout_p}
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
C {devices/lab_pin.sym} 9160 5030 1 0 {name=l3 sig_type=std_logic lab=vout_p}
C {devices/lab_pin.sym} 8860 5030 1 0 {name=l4 sig_type=std_logic lab=vout_m}
C {devices/lab_pin.sym} 9030 5170 3 0 {name=l5 sig_type=std_logic lab=vp}
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
