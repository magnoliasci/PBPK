load 'Khot2017.csl'

set BW = 0.028
set ivdosempk = 120.0
set numdoses = 1
set slope = 0.03
set tstop = 720.0

! Total tissue volumne (L)
set Vheart      = 0.152e-3
set Vlung       = 0.204e-3
set Vmuscle     = 11.3e-3
set Vskin       = 5.02e-3
set Vfat        = 1.98e-3
set Vmarrow     = 2.82e-3
set Vbrain      = 0.485e-3
set Vkidney     = 0.525e-3
set Vliver      = 1.93e-3
set Vsi         = 0.728e-3
set Vli         = 0.314e-3
set Vpancreas   = 0.0970e-3
set Vthymus     = 0.009e-3
set Vspleen     = 0.127e-3
set Vlymphnodes = 0.113e-3
set Vother      = 0.465e-3
set Vplasma     = 0.944e-3
set Vbc         = 0.773e-3

! Plasma volume (L)
set Vheart_plas      = 0.00585e-3
set Vlung_plas       = 0.0295e-3
set Vmuscle_plas     = 0.249e-3
set Vskin_plas       = 0.188e-3
set Vfat_plas        = 0.0218e-3
set Vmarrow_plas     = 0.0621e-3
set Vbrain_plas      = 0.0107e-3
set Vkidney_plas     = 0.0289e-3
set Vliver_plas      = 0.164e-3
set Vsi_plas         = 0.0116e-3
set Vli_plas         = 0.0050e-3
set Vpancreas_plas   = 0.00534e-3
set Vthymus_plas     = 0.0005e-3
set Vspleen_plas     = 0.0154e-3
set Vother_plas      = 0.0195e-3

! Blood cell volume (L)
set Vheart_bc      = 0.00479e-3
set Vlung_bc       = 0.0241e-3
set Vmuscle_bc     = 0.204e-3
set Vskin_bc       = 0.154e-3
set Vfat_bc        = 0.0178e-3
set Vmarrow_bc     = 0.0508e-3
set Vbrain_bc      = 0.00873e-3
set Vkidney_bc     = 0.0236e-3
set Vliver_bc      = 0.134e-3
set Vsi_bc         = 0.00950e-3
set Vli_bc         = 0.00409e-3
set Vpancreas_bc   = 0.00437e-3
set Vthymus_bc     = 0.000405e-3
set Vspleen_bc     = 0.0126e-3
set Vother_bc      = 0.0160e-3

! Interstitial volume (L)
set Vheart_int      = 0.0217e-3
set Vlung_int       = 0.0384e-3
set Vmuscle_int     = 1.47e-3
set Vskin_int       = 1.66e-3
set Vfat_int        = 0.337e-3
set Vmarrow_int     = 0.525e-3
set Vbrain_int      = 0.0873e-3
set Vkidney_int     = 0.0788e-3
set Vliver_int      = 0.385e-3
set Vsi_int         = 0.127e-3
set Vli_int         = 0.0545e-3
set Vpancreas_int   = 0.0169e-3
set Vthymus_int     = 0.00153e-3
set Vspleen_int     = 0.0254e-3
set Vother_int      = 0.0797e-3

! Endosomal volume (mL)
set Vheart_endo      = 0.000760e-3
set Vlung_endo       = 0.00102e-3
set Vmuscle_endo     = 0.0566e-3
set Vskin_endo       = 0.0251e-3
set Vfat_endo        = 0.00991e-3
set Vmarrow_endo     = 0.0141e-3
set Vbrain_endo      = 0.00243e-3
set Vkidney_endo     = 0.00263e-3
set Vliver_endo      = 0.00963e-3
set Vsi_endo         = 0.00364e-3
set Vli_endo         = 0.00157e-3
set Vpancreas_endo   = 0.000485e-3
set Vthymus_endo     = 0.00005e-3
set Vspleen_endo     = 0.00635e-3
set Vother_endo      = 0.00233e-3

! Cellular volume (mL)
set Vheart_cell      = 0.119e-3
set Vlung_cell       = 0.111e-3
set Vmuscle_cell     = 9.34e-3
set Vskin_cell       = 3.00e-3
set Vfat_cell        = 1.60e-3
set Vmarrow_cell     = 2.17e-3
set Vbrain_cell      = 0.376e-3
set Vkidney_cell     = 0.391e-3
set Vliver_cell      = 1.23e-3
set Vsi_cell         = 0.577e-3
set Vli_cell         = 0.248e-3
set Vpancreas_cell   = 0.0699e-3
set Vthymus_cell     = 0.00653e-3
set Vspleen_cell     = 0.0730e-3
set Vother_cell      = 0.348e-3
set Vlymphnodes_cell = 0.113e-3

! Plasma flow (L/h)
set Qheart_plas      = 36.5e-3
set Qlung_plas       = 371.51e-3 ! was 2945., corrected for mass balance and excluded lymph
set Qmuscle_plas     = 86.1e-3
set Qskin_plas       = 27.8e-3
set Qfat_plas        = 13.4e-3
set Qmarrow_plas     = 15.2e-3
set Qbrain_plas      = 11.8e-3
set Qkidney_plas     = 68.5e-3
set Qliver_plas      = 10.3e-3
set Qsi_plas         = 58.1e-3
set Qli_plas         = 17.3e-3
set Qpancreas_plas   = 6.24e-3
set Qthymus_plas     = 1.19e-3
set Qspleen_plas     = 8.18e-3
set Qlymphnodes_plas = 1.65e-3
set Qother_plas      = 10.9e-3

! Blood cell flow (L/h)
set Qheart_bc      = 29.9e-3
set Qlung_bc       = 304.02e-3 ! corrected for mass balance and excluded lymph
set Qmuscle_bc     = 70.5e-3
set Qskin_bc       = 22.8e-3
set Qfat_bc        = 11.0e-3
set Qmarrow_bc     = 12.4e-3
set Qbrain_bc      = 9.64e-3
set Qkidney_bc     = 56.1e-3
set Qliver_bc      = 8.40e-3
set Qsi_bc         = 47.5e-3
set Qli_bc         = 14.1e-3
set Qpancreas_bc   = 5.10e-3
set Qthymus_bc     = 0.97e-3
set Qspleen_bc     = 6.70e-3
set Qlymphnodes_bc = 1.35e-3
set Qother_bc      = 8.91e-3

prepare @all

start

plot circ
plot Ctumor_boundUD_tubulin
