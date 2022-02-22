load 'diazepam.csl'

set doseoff=30.0, dose=1.0e4
set cint = 0.5
set tstop = 250.0

prepare @clear
prepare cad, chrt, cbr, cst, cli, cki, ca, totalcleared

output @clear
output t, ca, cli

set kclli=400 @dist=norm @mean=400 @std=50

start @hold @nruns=10

plot @title='Diazepam' ...
     @xlabel='Time (minutes)' @ylabel='Concentration (ug/L)' ...
     cbr cli cki ca
