# OpenTox Summer Scool 2023 Magnolia Session Outline #

1. Show students the GitHub site with models, data, Magnolia tutorial slides, etc.
2. Cover the basics of user interface and workflow using the default model created by Magnolia when a new CSL file is created: main parts of UI, creating a new CSL file, main parts of CSL language, running a model, controlling model using sliders, loading and plotting observed data, controlling a model using CMD
3. Work with the PERC CC model
   1. Review model code
   2. Create CMD to parameterize as mouse and plot with Gerhart gas uptake data
   3. Edit model code to add first-order metabolism (and maybe 2nd fat compartment?)
   4. Show improvement in model fit
4. Work with updated PERC model
   1. Review code and modeling objectives
   2. Review model with additional code (initially commented out)
   3. Enable code, show fit to Odum data with some notional parameter values, use sliders to explore
   4. Show CMD script with code to estimate TCA metabolism parameters from Odum
5. Assign homework
   1. Recreate updated model by stepwise addition of TCA parameters and equations on your own
   2. Run the CMD script to estimate parameters
   3. Create a new CMD script to:
      * Run the model with fitted parameters and show fit to Odum data
      * Reparameterize as human with supplied parameters and show fit to one or more of the human data sets 
