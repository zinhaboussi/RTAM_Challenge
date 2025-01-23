v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 -350 340 -330 {
lab=VDD}
N 590 -340 610 -340 {
lab=GND}
N 610 -340 610 -310 {
lab=GND}
N 590 -310 610 -310 {
lab=GND}
N 510 -340 550 -340 {
lab=in}
N 510 -340 510 -290 {
lab=in}
N 710 -370 710 -350 {
lab=out}
N 590 -370 710 -370 {
lab=out}
C {devices/title.sym} 190 -60 0 0 {name=l1 author="Zine-Eddine Haboussi"}
C {devices/vsource.sym} 340 -300 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} 340 -350 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 340 -270 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 590 -430 0 0 {name=l3 lab=VDD}
C {devices/res.sym} 590 -400 0 0 {name=R2
value=3300
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 590 -310 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 510 -260 0 0 {name=V2 value="0.6 AC 1"}
C {devices/lab_pin.sym} 510 -340 1 0 {name=p2 sig_type=std_logic lab=in}
C {devices/gnd.sym} 510 -230 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 710 -320 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 710 -290 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 710 -370 0 0 {name=p3 sig_type=std_logic lab=out}
C {devices/code.sym} 800 -460 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 830 -260 0 0 {name=SPICE only_toplevel=false value="
.control
ac dec 10 1 10G
plot vdb(out)
.endc
.save all
"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 570 -340 0 0 {name=M1
W=98
L=0.18
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
