* File: counter_28bit.pex.netlist
* Program "Calibre xRC"
* Version "v2012.2_36.25"
*----------------------------------------------------------------------
* Paramters and models 
*----------------------------------------------------------------------
.param SUPPLY=3.3
.param DUR=15*32ns
.include "tsmc_018_pex.sp"
.temp 70
.option post
.include "counter_28bit_en.pex.netlist"
*----------------------------------------------------------------------
* Simulation netlist 
*----------------------------------------------------------------------
Vdd  vdd     gnd 'SUPPLY'
Vclk   clk   gnd PULSE 0        'SUPPLY' 0ps 0ps 0ps 7.5ns 15ns
Vclk_b clk_b gnd PULSE 'SUPPLY' 0        0ps 0ps 0ps 7.5ns 15ns
Vrs_n  rs_n  gnd PULSE 0        'SUPPLY' 15ns 0ps 0ps 'DUR' 'DUR'  
Ven   en     gnd 'SUPPLY'
X1 clk_b en clk rs_n Q24 Q25 Q26 Q27 TC Q20 Q21 Q22 Q23
+ Q16 Q17 Q18 Q19 Q12 Q13 Q14 Q15 Q8 Q9 Q10 Q11 Q4 Q5 Q6 Q7 Q0 vdd Q1 Q2 Q3 vdd
+ gnd COUNTER_28BIT_EN
*----------------------------------------------------------------------
* Stimulus (USER EDIT)
*----------------------------------------------------------------------
.tran 0.1ns 'DUR'
.end
*