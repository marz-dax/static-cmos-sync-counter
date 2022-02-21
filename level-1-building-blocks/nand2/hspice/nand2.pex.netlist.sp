* File: nand2.pex.netlist.sp
* Program "Calibre xRC"
* Version "v2012.2_36.25"
*----------------------------------------------------------------------
* Paramters and models
*----------------------------------------------------------------------
.param SUPPLY=3.3
.include "/afs/cad/u/b/d/bd68/ECE-658/models/tsmc_018_pex.sp"
.temp 70
.option post
.include "/afs/cad/u/b/d/bd68/ECE-658/project/pex/nand2/nand2.pex.netlist"
*----------------------------------------------------------------------
* Simulation netlist 
*----------------------------------------------------------------------
Vdd  vdd  gnd 'SUPPLY'
Vb b gnd 'SUPPLY'
Va a gnd PULSE 0 'SUPPLY' 25ps 0ps 0ps 55ps 100ps
X1 a b vout gnd vdd NAND2
*----------------------------------------------------------------------
* Stimulus 
*----------------------------------------------------------------------
.tran 0.1ps 100ps
.end
*