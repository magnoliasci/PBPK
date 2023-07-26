# OpenTox Summer Scool 2023 Magnolia Session Outline #

The Magnolia session will consist of a short introduction to the application's user interface and workflow, followed by a demonstration of extending a published model of perchloroethylene to include an additional metabolic path and review of a homework assignment related to further extension of this model.

1. Show students the GitHub site with models, data, Magnolia tutorial slides, etc.
2. Cover the basics of user interface and workflow using the default model created by Magnolia when a new CSL file is created: main parts of UI, creating a new CSL file, main parts of CSL language, running a model, controlling model using sliders, loading and plotting observed data, controlling a model using CMD
3. Work with the PERC CC model
   1. Review model code
   2. Show fit of existing model predcitions to Gearhart gas uptake data
   3. Edit model code to add first-order metabolism
   4. Show improvement in model fit
   5. Create CMD to parameterize as mouse and plot with Gerhart gas uptake data
4. Work with updated PERC model
   1. Review code and modeling objectives (saturable kinetics doesn't work for TCA production)
   2. Review model with additional code (initially commented out)
   3. Review and run CMD file for running mouse metabolit (first-order kinetics disabled)
   4. Enable code, show fit to Odum inhalation metabolit data with some notional parameter values, use sliders to explore
   5. Use final Vmax/Km/KFC parmaeters and show fit
5. Assign homework
   1. Recreate updated model by stepwise addition of TCA parameters and equations on your own   
   2. Create a new CMD script to reparameterize as human with supplied parameters and show fit to one or more of the human data sets 

