* File: ha.pex.netlist
* Program "Calibre xRC"
* Version "v2012.2_36.25"
*----------------------------------------------------------------------
* Paramters and models
*----------------------------------------------------------------------
.param SUPPLY=3.3
.include "tsmc_018_pex.sp"
.temp 70
.option post
.include "ha.pex.netlist"
*----------------------------------------------------------------------
* Simulation netlist
*----------------------------------------------------------------------
Vdd  vdd  gnd 'SUPPLY'
Va a gnd PULSE 0 'SUPPLY' 0ps 0ps 0ps 1ns 2ns
Vb b gnd PULSE 0 'SUPPLY' 0ps 0ps 0ps 0.5ns 1ns
X1 carry a b sum gnd vdd HA
*----------------------------------------------------------------------
* Stimulus
*----------------------------------------------------------------------
.tran 0.1ps 2ns
.end
*