v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 960 -320 1010 -320 { lab=#net1}
N 1070 -320 1070 -270 { lab=#net1}
N 1070 -210 1070 -150 { lab=#net2}
N 950 -200 980 -200 { lab=GND}
N 990 -180 990 -150 { lab=#net2}
N 990 -150 1070 -150 { lab=#net2}
N 990 -320 990 -270 { lab=#net1}
N 1000 -320 1070 -320 { lab=#net1}
N 1030 -90 1030 -40 { lab=GND}
N 830 -320 830 -290 { lab=#net1}
N 830 -320 960 -320 { lab=#net1}
N 830 -230 830 -140 { lab=#net3}
N 830 -80 830 -50 { lab=GND}
N 830 -50 1030 -50 { lab=GND}
N 920 -220 990 -220 { lab=mid}
N 1920 -270 1970 -270 { lab=#net4}
N 2130 -420 2130 -330 { lab=#net5}
N 2130 -270 2130 -240 { lab=#net6}
N 2010 -420 2010 -320 { lab=#net5}
N 2010 -420 2130 -420 { lab=#net5}
N 1230 -190 1230 -180 { lab=#net2}
N 1270 -220 1300 -220 { lab=#net1}
N 1200 -180 1230 -180 { lab=#net2}
N 1200 -290 1230 -290 { lab=#net2}
N 1230 -290 1230 -250 { lab=#net2}
N 1070 -320 1220 -320 { lab=#net1}
N 1130 -180 1200 -180 { lab=#net2}
N 1130 -290 1130 -180 { lab=#net2}
N 1130 -290 1200 -290 { lab=#net2}
N 1210 -220 1230 -220 { lab=#net7}
N 1130 -180 1130 -150 { lab=#net2}
N 1070 -150 1130 -150 { lab=#net2}
N 1300 -320 1300 -220 { lab=#net1}
N 1220 -320 1300 -320 { lab=#net1}
N 1210 -220 1210 -130 { lab=#net7}
C {devices/code_shown.sym} -680 -380 0 0 {name=s1 only_toplevel=false value="
.include "/home/vakumar/tools/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130_fd_pr__model__inductors.model.spice"
*.include "/home/dhurga/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130_fd_pr__model__inductors.model.spice"

.lib /home/vakumar/tools/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param lofreq = 1Meg
.csparam lofreq = \{lofreq\}
.param hifreq = 10G
.csparam hifreq = \{hifreq\}

.ac dec 100 \{lofreq\} \{hifreq\}
.plot 
.control
run
*plot i(vin_dc)
echo inductance
let resp=mag(v(net1,net2))
let resp1=maximum(resp)/1.414
meas ac y3dB1 when resp=resp1 RISE=1
meas ac y3dB2 when resp=resp1 FALL=1
meas ac ymax max_at resp
* Note: 39.478 is (2*pi)^2
*plot resp
let q=ymax/(y3dB2-y3dB1)
let l=1/(1.0E-10*39.478*ymax*ymax)
let rp=q/(620E-15*2*pi*ymax)
let c=1/(4*pi*pi*ymax*ymax*l)
print resp1 q rp ymax c l 
*print q 

.endc
"
}
C {devices/gnd.sym} 950 -200 0 0 {name=l45 lab=GND}
C {sky130_fd_pr/ind_03_90.sym} 950 -280 1 0 {name=x1 model=ind_03_90 spiceprefix=X}
C {devices/capa.sym} 1070 -240 0 0 {name=C2
m=1
value=310f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1030 -40 0 0 {name=l1 lab=GND}
C {devices/isource.sym} 830 -260 0 0 {name=IAC value="DC 0 AC 1 SIN(0 1MV 1MHZ)"

}
C {devices/vsource.sym} 830 -110 0 0 {name=Vin_dc value=1.8}
C {devices/lab_pin.sym} 920 -220 0 0 {name=l2 sig_type=std_logic lab=mid}
C {devices/res.sym} 1030 -120 2 0 {name=R3
value=100
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_var_lvt.sym} 2010 -290 0 0 {name=C1 model=cap_var_lvt W=0.5 L=0.5 VM=1 spiceprefix=X}
C {devices/gnd.sym} 2010 -260 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1920 -240 0 0 {name=Vin_dc1 value=1.8}
C {devices/gnd.sym} 1920 -210 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 2130 -210 0 0 {name=Vin_dc3 value=1.8}
C {devices/gnd.sym} 2130 -180 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 2130 -300 0 0 {name=Vin_pulse value="PULSE(0 1 2NS 2NS 2NS 50NS 100NS)" net_name=true

}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1250 -220 0 1 {name=M105
L=1
W=10
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/vsource.sym} 1210 -100 0 0 {name=Vin_dc4 value=1.2}
C {devices/gnd.sym} 1210 -70 0 0 {name=l7 lab=GND}
