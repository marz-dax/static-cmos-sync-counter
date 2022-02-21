* File: counter_4bit_en.pex.netlist
* Program "Calibre xRC"
* Version "v2012.2_36.25"
*----------------------------------------------------------------------
* Paramters and models
*----------------------------------------------------------------------
.param SUPPLY=3.3
.include "tsmc_018_pex.sp"
.temp 70
.option post
.include "counter_4bit_en.pex.netlist"
*----------------------------------------------------------------------
* Simulation netlist 
*----------------------------------------------------------------------
Vdd  vdd  gnd 'SUPPLY'
Vclk   clk   gnd PULSE 0        'SUPPLY' 0ps    0ps 0ps 0.5ns 1ns
Vclk_b clk_b gnd PULSE 'SUPPLY' 0        0ps    0ps 0ps 0.5ns 1ns
Ven    en    gnd PULSE 0	'SUPPLY' 0ps	0ps 0ps 5ns   10ns
Vrs_n rs_n gnd 'SUPPLY'
X1 clk_b en clk rs_n q0 vdd q1 q2 q3 tc gnd vdd COUNTER_4BIT_EN
*----------------------------------------------------------------------
* Stimulus 
*----------------------------------------------------------------------
.tran 1ps 20ns
.end
*