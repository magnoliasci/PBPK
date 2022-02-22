! The application suppoprts having multiple models loaded
! into memory simultaneously, so the model that this CMD file
! relates to has to be specified. Also, CSL file for this model 
! needs to be open
load 'styrene.csl'

prepare @all

! Load the observed data, which should be put into a CSV file
data @file='STY600.csv' data600

! Rat parameters
SET BW=0.3, VFC=0.09

! Chemical parameters
SET MW=104.2,PB=40.2,PF=50.,PL=3.46,PR=3.46,PS=1.16
SET VMAXC=8.36,KM=0.4,KFC=0.5

! Data file syntax has changed. It now pulls in data from the CSV file.
! Time must be first col in file. 
data @file='STY600.csv' styrene600ppm

! Exposure parameters
SET CONC=600 PDOSE=0, KA=0, IVDOSEC=0, TCHNG=6, TSTOP=24

! Run the model
start

! Plot outputs and overlay observed
plot @logy @ymin=0.1 @ymax=4000 'data600:Fat_C' 'data600:Alv_CA' cf ca 
