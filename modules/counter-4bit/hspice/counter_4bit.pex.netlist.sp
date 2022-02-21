* File: counter_4bit.pex.netlist
* Program "Calibre xRC"
* Version "v2012.2_36.25"
*----------------------------------------------------------------------
* Paramters and models 
*----------------------------------------------------------------------
.param SUPPLY=3.3
.include "/afs/cad/u/b/d/bd68/ECE-658/models/tsmc_018_pex.sp"
.temp 70
.option post
.include "counter_4bit.pex.netlist"
*----------------------------------------------------------------------
* Simulation netlist 
*----------------------------------------------------------------------
Vdd  vdd  gnd 'SUPPLY'
Vclk   clk   gnd PULSE 0        'SUPPLY' 0ps    0ps 0ps 0.5ns 1ns
Vclk_b clk_b gnd PULSE 'SUPPLY' 0        0ps    0ps 0ps 0.5ns 1ns
Vrs_n  rs_n  gnd PULSE 0        'SUPPLY' 0.05ns 0ps 0ps 20ns  20ns
X1 clk_b vdd rs_n clk q0 q1 q2 q3 tc gnd vdd COUNTER_4BIT
*----------------------------------------------------------------------
* Stimulus 
*----------------------------------------------------------------------
.tran 1ps 20ns
.end
*