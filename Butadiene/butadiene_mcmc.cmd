load 'butadiene.csl'
reset

! Load data for all subjects...
! For MCMC runs, the descriptor can either be defined here or inside the MCMC model code
! If they're defined in both places, the values specified here override the values
! in the MCMC model code (akin to CONSTANTs in CSL models)
data @file='butadiene.csv' ds1e1 t='T' c_exh='S1E1_cexh' Flow_pul_obs='S1E1_pflow' tstop=60 BDW=86.2600 height=1.7400 Sex=1 Age=28
data @file='butadiene.csv' ds1e2 t='T' c_exh='S1E2_cexh' Flow_pul_obs='S1E2_pflow' tstop=60 BDW=86.2600 height=1.7400 Sex=1 Age=28
data @file='butadiene.csv' ds2e1 t='T' c_exh='S2E1_cexh' Flow_pul_obs='S2E1_pflow' tstop=60 BDW=85.84 height=1.62 Sex=2 Age=30
data @file='butadiene.csv' ds2e2 t='T' c_exh='S2E2_cexh' Flow_pul_obs='S2E2_pflow' tstop=60 BDW=85.84 height=1.62 Sex=2 Age=30
data @file='butadiene.csv' ds5e1 t='T' c_exh='S5E1_cexh' Flow_pul_obs='S5E1_pflow' tstop=60 BDW=61.29 height=1.67 Sex=1 Age=37
data @file='butadiene.csv' ds5e2 t='T' c_exh='S5E2_cexh' Flow_pul_obs='S5E2_pflow' tstop=60 BDW=61.29 height=1.67 Sex=1 Age=37

set cint = 5.0

! This line uses a flat MCMC model
mcmc @silent @mcmcfile='butadiene.mcmc' @chainsfile='chains.csv' @numits=500

! This line uses a hierarchical MCMC model
!!!mcmc @silent @mcmcfile='butadiene_pop.mcmc' @chainsfile='chains.csv' @numits=1000
