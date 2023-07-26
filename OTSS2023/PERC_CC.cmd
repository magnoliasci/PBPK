load 'PERC_CC.csl'

data INH200 @file='Gearhart_inh.csv' T='T200'
data INH1000 @file='Gearhart_inh.csv' T='T1000'
data INH3500 @file='Gearhart_inh.csv' T='T3500'

prepare T, CP

set conc = 200
start
plot cp 'INH200:C200'

set conc = 1000
start
plot cp 'INH1000:C1000'

set conc = 3500
start
plot cp 'INH3500:C3500'