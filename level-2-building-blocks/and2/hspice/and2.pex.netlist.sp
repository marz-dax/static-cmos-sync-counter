* File: and2.pex.netlist.sp
* Program "Calibre xRC"
* Version "v2012.2_36.25"
*----------------------------------------------------------------------
* Paramters and models
*----------------------------------------------------------------------
.param SUPPLY=3.3
.include "tsmc_018_pex.sp"
.temp 70
.option post
.include "and2.pex.netlist"
*----------------------------------------------------------------------
* Simulation netlist
*----------------------------------------------------------------------
Vdd  vdd  gnd 'SUPPLY'
Va a gnd PULSE 0 'SUPPLY' 0ps 0ps 0ps 1ns 2ns
Vb b gnd PULSE 0 'SUPPLY' 0ps 0ps 0ps 0.5ns 1ns
X1 vout a b gnd vdd AND2
*----------------------------------------------------------------------
* Stimulus
*----------------------------------------------------------------------
.tran 0.1ps 2ns
.end
*