LOAD 'PERC.csl'

RESET

DATA ORAL_100  @file='Gearhart_1993.csv' T='T'
DATA ORAL_536  @file='Gearhart_1993.csv' T='T'
DATA ORAL_1072 @file='Gearhart_1993.csv' T='T'

SET QPC=20.0, QCC=15.0, QLC=0.25, QFC1=0.03, QFC2=0.02
SET BW=0.037, VFC1=0.08, VFC2=0.02, VLC=0.04
SET PL=2.4, PF=75.0, PS=3.3, PR=2.2, PB=20.0
SET VMAXC=0.2, KM=2.0, KFC=2.0, FTCA=0.9, KUC=0.035, VDC=0.238

PREPARE T, CXPPM, CV

SET CONC=0.0, TCHNG=0.0, IVDOSE=0.0, DAYS=1.0, TMAX=24.0
SET TSTOP=48.0
SET BW=0.03784, PDOSE=100.0
START
PLOT CV 'ORAL_100:CB_100'

SET BW=0.0377, PDOSE=536.0
START
PLOT CV 'ORAL_536:CB_536'

SET BW=0.0372, PDOSE=1072.0
START
PLOT CV 'ORAL_1072:CB_1072'