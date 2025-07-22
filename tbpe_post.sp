.lib /foss/designs/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include pe_inverters.spice


Xring clk A B CIN ua[1] ua[2] ua[3] ua[4] ua[5] ua[6]
+ ua[7] ui_in[0] ui_in[1] ui_in[2] ui_in[3] ui_in[4] ui_in[5] ui_in[6] ui_in[7] uio_in[0]
+ uio_in[1] uio_in[2] uio_in[3] uio_in[4] uio_in[5] uio_in[6] uio_in[7] uio_oe[0]
+ uio_oe[1] uio_oe[2] uio_oe[3] uio_oe[4] uio_oe[5] uio_oe[6] uio_oe[7] uio_out[0]
+ uio_out[1] uio_out[2] uio_out[3] uio_out[4] uio_out[5] uio_out[6] uio_out[7] uo_out[0]
+ uo_out[1] uo_out[2] uo_out[3] uo_out[4] uo_out[5] uo_out[6] uo_out[7] tt_um_ohmy90_ringOscillator


VB B 0 DC 1.8
VA A 0 DC 0
VI ui_in[0] 0 DC 0

.tran 100ps 45ns
.control
run
.endc
