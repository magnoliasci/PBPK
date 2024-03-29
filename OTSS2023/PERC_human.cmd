LOAD 'PERC.csl'

RESET

SET QPC=24.0, QCC=16.0, QSC = 0.24, QRC=0.76, QLC=0.25, QFC1=0.03, QFC2=0.02
SET BW=70.0, VSC = 0.82, VRC = 0.09, VFC1=0.16, VFC2=0.04, VLC=0.04
SET PL=5.27, PF=125.2, PS=6.11, PR=5.06, PB=11.58
SET VMAXC=0.28, KM=7.7, KFC=0, FTCA=0.6, KUC=0.08, VDC=0.1
SET KFC=0.0
PREPARE T, CXPPM, CVM, ACLM

! Fernandez 100 PPM data
DATA FERN100_1 @file='Fernandez_100.csv' T='T'
DATA FERN100_2 @file='Fernandez_100.csv' T='T'
DATA FERN100_4 @file='Fernandez_100.csv' T='T'

! Monster 144 PPM data
DATA MONSTER_144 @file='Monster_inh.csv' T = 'T'

DATA VOLKEL10 @file='Volkel_human.csv' T='T10'
DATA VOLKEL20 @file='Volkel_human.csv' T='T20'
DATA VOLKEL40 @file='Volkel_human.csv' T='T40'

!SET CONC=100.0, TSTOP=8.0, TCHNG=1.0
!START
!PLOT CXPPM 'FERN100_1:CXPPM_1' ...
!     @TITLE='PERC, human, exhaled air conc, 100 ppm @ 1 h' ...
!     @XLABEL='Time (h)' @YLABEL='Air Concentration (ppm)'

!SET TCHNG=2.0
!START
!PLOT CXPPM 'FERN100_2:CXPPM_2' @TITLE='PERC, human, exhaled air conc, 100 ppm @ 2 h'

!SET TCHNG=4.0
!START
!PLOT CXPPM 'FERN100_4:CXPPM_4' @TITLE='PERC, human, exhaled air conc, 100 ppm @ 4 h'

!SET TSTOP=167.7, BW=77.33, PDOSE=0.0, TCHNG=4.0
!SET CONC=144.0
!START
!PLOT CVM 'MONSTER_144:CVM'

SET TSTOP=80, BW=66.75, PDOSE=0.0, TCHNG=6.0
SET CONC=10.0
START
PLOT ACLM 'VOLKEL10:ACLM10'
