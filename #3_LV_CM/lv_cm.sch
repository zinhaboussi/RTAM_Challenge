v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 -320 150 -300 {
lab=VDD}
N 650 -270 670 -270 {
lab=GND}
N 670 -270 670 -240 {
lab=GND}
N 650 -240 670 -240 {
lab=GND}
N 650 -370 670 -370 {
lab=GND}
N 670 -370 670 -340 {
lab=GND}
N 650 -340 650 -300 {lab=#net1}
N 670 -340 670 -270 {lab=GND}
N 650 -240 650 -190 {lab=GND}
N 550 -190 650 -190 {lab=GND}
N 470 -190 550 -190 {lab=GND}
N 470 -240 470 -190 {lab=GND}
N 470 -340 470 -300 {lab=#net2}
N 270 -190 470 -190 {lab=GND}
N 270 -340 270 -190 {lab=GND}
N 470 -500 470 -480 {lab=VDD}
N 470 -420 470 -400 {lab=#net3}
N 270 -500 270 -480 {lab=VDD}
N 270 -420 270 -400 {lab=VB}
N 650 -440 650 -400 {lab=out}
N 650 -440 780 -440 {lab=out}
N 780 -440 780 -350 {lab=out}
N 780 -290 780 -190 {lab=GND}
N 650 -190 780 -190 {lab=GND}
N 510 -370 610 -370 {lab=VB}
N 510 -270 610 -270 {lab=#net3}
N 470 -410 550 -410 {lab=#net3}
N 550 -410 550 -270 {lab=#net3}
N 450 -370 470 -370 {lab=GND}
N 450 -370 450 -270 {lab=GND}
N 450 -270 470 -270 {lab=GND}
N 450 -270 450 -240 {lab=GND}
N 450 -240 470 -240 {lab=GND}
N 310 -420 310 -370 {lab=VB}
N 270 -420 310 -420 {lab=VB}
N 240 -370 270 -370 {lab=GND}
N 240 -370 240 -340 {lab=GND}
N 240 -340 270 -340 {lab=GND}
N 560 -190 560 -170 {lab=GND}
C {devices/title.sym} 190 -60 0 0 {name=l1 author="Zine-Eddine Haboussi"}
C {devices/vsource.sym} 150 -270 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} 150 -320 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 150 -240 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 470 -500 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 560 -170 0 0 {name=l4 lab=GND}
C {devices/code.sym} 900 -480 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 930 -280 0 0 {name=SPICE only_toplevel=false value="
.dc V2 0 1.8 0.01  
.control
  run
  let rout = deriv(v(out))/-deriv(i(V2))   
  plot rout        
.endc
.save all
"
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 630 -270 0 0 {name=M2
W=21.4
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 630 -370 0 0 {name=M3
W=19.57
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 490 -270 0 1 {name=M1
W=10.7
L=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 290 -370 0 1 {name=M5
W=1.32
L=0.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 490 -370 0 1 {name=M4
W=9.78
L=0.5
nf=0.5
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} 780 -320 0 0 {name=V2 value=0 savecurrent=false}
C {isource.sym} 270 -450 0 0 {name=I0 value=50u}
C {isource.sym} 470 -450 0 0 {name=I1 value=50u}
C {devices/vdd.sym} 270 -500 0 0 {name=l5 lab=VDD}
C {lab_pin.sym} 590 -370 0 0 {name=p3 sig_type=std_logic lab=VB}
C {lab_pin.sym} 310 -370 0 1 {name=p4 sig_type=std_logic lab=VB}
C {lab_pin.sym} 650 -440 0 0 {name=p5 sig_type=std_logic lab=out}
