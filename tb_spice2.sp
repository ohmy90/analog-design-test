* Testbench for tt_um_ohmy90_ringOscillator

.lib /foss/designs/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include tt_um_ohmy90_ringOscillator.spice

* Power Supplies
VDD VPWR 0 1.8
VGND VGND 0 0

* Bias the twin well
VVNB VNB 0 0
VVPB VPB 0 1.8

* Inputs (set constant for now — you can pulse them later)
V_A A 0 0
V_B B 0 0
V_CIN COUT 0 0
V_CLK clk 0 0

* Input arrays (set to 0 for now)
* You can replace these with PULSE if you want activity
Vin_ui0 ui_in[0] 0 0
Vin_ui1 ui_in[1] 0 0
Vin_ui2 ui_in[2] 0 0
Vin_ui3 ui_in[3] 0 0
Vin_ui4 ui_in[4] 0 0
Vin_ui5 ui_in[5] 0 0
Vin_ui6 ui_in[6] 0 0
Vin_ui7 ui_in[7] 0 0

* Same for uio_in
Vin_uio0 uio_in[0] 0 0
Vin_uio1 uio_in[1] 0 0
Vin_uio2 uio_in[2] 0 0
Vin_uio3 uio_in[3] 0 0
Vin_uio4 uio_in[4] 0 0
Vin_uio5 uio_in[5] 0 0
Vin_uio6 uio_in[6] 0 0
Vin_uio7 uio_in[7] 0 0

* Output enable signals (always enable)
Voe0 uio_oe[0] 0 1.8
Voe1 uio_oe[1] 0 1.8
Voe2 uio_oe[2] 0 1.8
Voe3 uio_oe[3] 0 1.8
Voe4 uio_oe[4] 0 1.8
Voe5 uio_oe[5] 0 1.8
Voe6 uio_oe[6] 0 1.8
Voe7 uio_oe[7] 0 1.8

* Instantiate DUT (Device Under Test

Xfa A B CIN VGND VNB VPB VPWR COUT SUM a_1100_75# a_1107_347#
+ a_318_389# a_315_75# a_916_347# a_69_260# a_936_75# a_465_249# a_237_75# a_501_75#
+ a_509_347# a_217_368# sky130_fd_sc_hs__fa_1


X1 clk A B COUT ua[1] ua[2] ua[3] ua[4] ua[5] ua[6]
+ ua[7] ui_in[0] ui_in[1] ui_in[2] ui_in[3] ui_in[4] ui_in[5] ui_in[6] ui_in[7] uio_in[0]
+ uio_in[1] uio_in[2] uio_in[3] uio_in[4] uio_in[5] uio_in[6] uio_in[7] uio_oe[0]
+ uio_oe[1] uio_oe[2] uio_oe[3] uio_oe[4] uio_oe[5] uio_oe[6] uio_oe[7] uio_out[0]
+ uio_out[1] uio_out[2] uio_out[3] uio_out[4] uio_out[5] uio_out[6] uio_out[7] uo_out[0]
+ uo_out[1] uo_out[2] uo_out[3] uo_out[4] uo_out[5] uo_out[6] uo_out[7] tt_um_ohmy90_ringOscillator


* TRAN analysis
.tran 100ps 25ns

.control
run

.endc
