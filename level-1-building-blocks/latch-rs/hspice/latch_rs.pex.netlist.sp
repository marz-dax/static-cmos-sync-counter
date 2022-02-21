* File: latch.pex.netlist.sp
* Program "Calibre xRC"
* Version "v2012.2_36.25"
*----------------------------------------------------------------------
* Paramters and models
*----------------------------------------------------------------------
.param SUPPLY=3.3
.include "tsmc_018_pex.sp"
.temp 70
.option post
.include "latch_rs.pex.netlist"
*----------------------------------------------------------------------
* Simulation netlist 
*----------------------------------------------------------------------
Vdd  vdd  gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' 0ps 0ps 0ps 0.5ns 1ns
Vd   d   gnd PULSE 0 'SUPPLY' 0.1ns 0ps 0ps 0.25ns 1ns
X1 clk d q gnd vdd LATCH_RS
*----------------------------------------------------------------------
* Stimulus
*----------------------------------------------------------------------
.tran 0.1ps 2ns
.end
*