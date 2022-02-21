* File: dff_rs.pex.netlist
* Program "Calibre xRC"
* Version "v2012.2_36.25"
*----------------------------------------------------------------------
* Paramters and models 
*----------------------------------------------------------------------
.param SUPPLY=3.3
.include "tsmc_018_pex.sp"
.temp 70
.option post
.include "dff_rs.pex.netlist"
*----------------------------------------------------------------------
* Simulation netlist
*----------------------------------------------------------------------
Vdd  vdd  gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY'   0ps 0ps 0ps 0.5ns 1ns
Vclk_b clk_b gnd PULSE 'SUPPLY' 0 0ps 0ps 0ps 0.5ns 1ns
Vd   d   gnd PULSE 0 'SUPPLY'   0.25ns 0ps 0ps 2ns 2ns
X1 vdd d clk_b clk q gnd vdd DFF_RS
*----------------------------------------------------------------------
* Stimulus
*----------------------------------------------------------------------
.tran 0.1ps 2ns
.end
*