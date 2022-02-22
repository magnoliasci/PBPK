load 'butadiene.csl'

! Reset all model quantities to default values
reset

! Set list of variables for which time histories should be collected
prepare @clear t c_exh flow_pul_obs PC_art_obs

! Load data and set descriptors for all subjects...
data @file='butadiene.csv' ds1e1 t='T' c_exh='S1E1_CEXH' flow_pul_obs='S1E1_PFLOW' PC_art_obs='S1E1_PCBA' tstop=60 BDW=86.2600 height=1.7400 Sex=1 Age=28
data @file='butadiene.csv' ds1e2 t='T' c_exh='S1E2_CEXH' flow_pul_obs='S1E2_PFLOW' PC_art_obs='S1E2_PCBA' tstop=60 BDW=86.2600 height=1.7400 Sex=1 Age=28
data @file='butadiene.csv' ds2e1 t='T' c_exh='S2E1_CEXH' flow_pul_obs='S2E1_PFLOW' PC_art_obs='S2E1_PCBA' tstop=60 BDW=85.84 height=1.62 Sex=2 Age=30
data @file='butadiene.csv' ds2e2 t='T' c_exh='S2E2_CEXH' flow_pul_obs='S2E2_PFLOW' PC_art_obs='S2E2_PCBA' tstop=60 BDW=85.84 height=1.62 Sex=2 Age=30
data @file='butadiene.csv' ds5e1 t='T' c_exh='S5E1_CEXH' flow_pul_obs='S5E1_PFLOW' PC_art_obs='S5E1_PCBA' tstop=60 BDW=61.29 height=1.67 Sex=1 Age=37
data @file='butadiene.csv' ds5e2 t='T' c_exh='S5E2_CEXH' flow_pul_obs='S5E2_PFLOW' PC_art_obs='S5E2_PCBA' tstop=60 BDW=61.29 height=1.67 Sex=1 Age=37

! Run and plot with nominal values...

! Subject 1
set BDW    = 86.2600
set height = 1.7400
set Sex    = 1
set Age    = 28
start
plot c_exh 'ds1e1:s1e1_cexh' 'ds1e2:s1e2_cexh' ...
     flow_pul_obs 'ds1e1:S1E1_PFLOW' 'ds1e2:S1E2_PFLOW'  ...
     PC_art_obs 'ds1e1:S1E1_PCBA' 'ds1e2:S1E2_PCBA' ...
     @title='Nominal Parameter Values, Subject 1'

! Subject 2
set BDW    = 85.84
set height = 1.62
set Sex    = 2
set Age    = 30
start
plot c_exh 'ds2e1:s2e1_cexh' 'ds2e2:s2e2_cexh' ...
     flow_pul_obs 'ds2e1:S2E1_PFLOW' 'ds2e2:S2E2_PFLOW'  ...
     PC_art_obs 'ds2e1:S2E1_PCBA' 'ds2e2:S2E2_PCBA' ...
     @title='Nominal Parameter Values, Subject 2'

! Subject 5
set BDW    = 61.29 
set height = 1.67 
set Sex    = 1 
set Age    = 37
start
plot c_exh 'ds5e1:s5e1_cexh' 'ds5e2:s5e2_cexh' ...
     flow_pul_obs 'ds5e1:S5E1_PFLOW' 'ds5e2:S5E2_PFLOW'  ...
     PC_art_obs 'ds5e1:S5E1_PCBA' 'ds5e2:S5E2_PCBA' ...
     @title='Nominal Parameter Values, Subject 5'

! Set default values and lower/upper constraints for parameters
set Pct_BDW_wp = 0.2 @min=0.1 @max=0.35
set Pct_Deadspace = 0.4 @min=0.23 @max=0.45
set Pct_Flow_fat = 0.05 @min=0.03 @max=0.09
set Pct_Flow_pp = 0.15 @min=0.06 @max=0.26
set Flow_pul = 7 @min=4.0 @max=12.0
set PC_art = 1.3 @min=0.75 @max=2.25
set PC_pp = 0.7 @min=0.4 @max=1.2
set PC_wp = 0.7 @min=0.4 @max=1.2
set Kmetwp = 0.25 @min=0.01 @max=0.6

! The @method=ml below designates that the maximum likelihood approach should be used
! Alternatively, @method=ls would designate least squares
! The values for @errormodel are: additive, proportional and mixed (additive + proportional errors are modeled)
fit @method=ml @errormodel=mixed Pct_BDW_wp Pct_Deadspace Pct_Flow_fat Pct_Flow_pp Flow_pul PC_art PC_pp PC_wp Kmetwp

! Run and plot with optimized values...

! Subject 1
set BDW    = 86.2600
set height = 1.7400
set Sex    = 1
set Age    = 28
start
plot c_exh 'ds1e1:s1e1_cexh' 'ds1e2:s1e2_cexh' ...
     flow_pul_obs 'ds1e1:S1E1_PFLOW' 'ds1e2:S1E2_PFLOW'  ...
     PC_art_obs 'ds1e1:S1E1_PCBA' 'ds1e2:S1E2_PCBA' ...
     @title='Optimized Parameter Values, Subject 1'

! Subject 2
set BDW    = 85.84
set height = 1.62
set Sex    = 2
set Age    = 30
start
plot c_exh 'ds2e1:s2e1_cexh' 'ds2e2:s2e2_cexh' ...
     flow_pul_obs 'ds2e1:S2E1_PFLOW' 'ds2e2:S2E2_PFLOW'  ...
     PC_art_obs 'ds2e1:S2E1_PCBA' 'ds2e2:S2E2_PCBA' ...
     @title='Optimized Parameter Values, Subject 2'

! Subject 5
set BDW    = 61.29 
set height = 1.67 
set Sex    = 1 
set Age    = 37
start
plot c_exh 'ds5e1:s5e1_cexh' 'ds5e2:s5e2_cexh' ...
     flow_pul_obs 'ds5e1:S5E1_PFLOW' 'ds5e2:S5E2_PFLOW'  ...
     PC_art_obs 'ds5e1:S5E1_PCBA' 'ds5e2:S5E2_PCBA' ...
     @title='Optimized Parameter Values, Subject 5'
     
     
