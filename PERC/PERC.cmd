load 'PERC.csl'

prepare t c_ven

set sc_vmax=0.0026 @dist=norm @mean=0.0026 @std=0.0008
set pc_fat=144     @dist=norm @mean=144    @std=20
set pc_liv=4.6     @dist=norm @mean=4.6    @std=1.3
set pc_wp=8.7      @dist=norm @mean=8.7    @std=2.2
set pc_pp=1.4      @dist=norm @mean=1.4    @std=0.3
set pc_art=12.0    @dist=norm @mean=12.0   @std=0.42

start @hold @nruns=20

print @file='temp.csv' t c_ven