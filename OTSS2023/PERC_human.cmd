LOAD 'PERC.csl'

RESET

SET QPC=24.0, QCC=16.0, QSC = 0.24, QRC=0.76, QLC=0.25, QFC1=0.03, QFC2=0.02
SET BW=70.0, VSC = 0.82, VRC = 0.09, VFC1=0.16, VFC2=0.04, VLC=0.04
SET PL=5.27, PF=125.2, PS=6.11, PR=5.06, PB=11.58
SET VMAXC=0.28, KM=7.7, KFC=0.0, FTCA=0.6, KUC=0.08, VDC=0.1

PREPARE T, CXPPM

DATA FERN100_1 @file='Fernandez_100.csv' T='T'
DATA FERN100_2 @file='Fernandez_100.csv' T='T'
DATA FERN100_4 @file='Fernandez_100.csv' T='T'

DATA FERN150_1 @file='Fernandez_150.csv' T='T'
DATA FERN150_4 @file='Fernandez_150.csv' T='T'
DATA FERN150_6 @file='Fernandez_150.csv' T='T'
DATA FERN150_8 @file='Fernandez_150.csv' T='T'

SET CONC=100.0, TSTOP=8.0, TCHNG=1.0
START
PLOT CXPPM 'FERN100_1:CXPPM_1' ...
     @TITLE='PERC, human, exhaled air conc, 100 ppm @ 1 h' ...
     @XLABEL='Time (h)' @YLABEL='Air Concentration (ppm)'

SET TCHNG=2.0
START
PLOT CXPPM 'FERN100_2:CXPPM_2' @TITLE='PERC, human, exhaled air conc, 100 ppm @ 2 h'

SET TCHNG=4.0
START
PLOT CXPPM 'FERN100_4:CXPPM_4' @TITLE='PERC, human, exhaled air conc, 100 ppm @ 4 h'

SET CONC=150.0, TSTOP=12.0, TCHNG=1.0
START
PLOT CXPPM 'FERN150_1:CXPPM_1' ...
     @TITLE='PERC, human, exhaled air conc, 150 ppm @ 1 h' ...
     @XLABEL='Time (h)' @YLABEL='Air Concentration (ppm)'

SET TCHNG=4.0
START
PLOT CXPPM 'FERN150_4:CXPPM_4' @TITLE='PERC, human, exhaled air conc, 150 ppm @ 4 h'

SET TCHNG=6.0
START
PLOT CXPPM 'FERN150_6:CXPPM_6' @TITLE='PERC, human, exhaled air conc, 150 ppm @ 6 h'

SET TCHNG=8.0
START
PLOT CXPPM 'FERN150_8:CXPPM_8' @TITLE='PERC, human, exhaled air conc, 150 ppm @ 8 h'
