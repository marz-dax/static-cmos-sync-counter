* counter_33bit.pex.netlist
* Program "Calibre xRC"
* Version "v2012.2_36.25"
*----------------------------------------------------------------------
* Paramters and models
*----------------------------------------------------------------------
.param SUPPLY=3.3
.param DUR=34ns
.include "tsmc_018_pex.sp"
.temp 70
.option post
.include "counter_32bit_v2.pex.netlist"
*----------------------------------------------------------------------
* Simulation netlist 
*----------------------------------------------------------------------
Vdd  vdd     gnd 'SUPPLY'
Vclk   clk   gnd PULSE 0        'SUPPLY' 0ps 0ps 0ps 0.5ns 1ns
Vclk_b clk_b gnd PULSE 'SUPPLY' 0        0ps 0ps 0ps 0.5ns 1ns
Vrs_n  rs_n  gnd PULSE 0        'SUPPLY' 1ns 0ps 0ps 'DUR' 'DUR'  
Ven   en     gnd 'SUPPLY' 
X1 clk_b TC_4 clk rs_n vdd Q28 Q29 Q30 Q31 TC_28 Q24 Q25 Q26 Q27 Q20 Q21 Q22 Q23
+ Q16 Q17 Q18 Q19 Q12 Q13 Q14 Q15 Q8 Q9 Q10 Q11 Q4 Q5 Q6 Q7 Q0 Q1 Q2 Q3
+ gnd COUNTER_32BIT_V2
*----------------------------------------------------------------------
* Stimulus 
*----------------------------------------------------------------------
.tran 0.01ns 'DUR'
.end
*