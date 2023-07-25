# OpenTox Summer Scool 2023 Magnolia Session Outline #

1. Show students the GitHub site with models, data, Magnolia tutorial slides, etc.
2. Cover the basics of user interface and workflow using the default model created by Magnolia when a new CSL file is created: main parts of UI, creating a new CSL file, main parts of CSL language, running a model, controlling model using sliders, loading and plotting observed data, controlling a model using CMD
3. Work with the PERC CC model
  a. Review model code
  b. Create CMD to parameterize as mouse and plot with Gerhart gas uptake data
  c. Edit model code to add first-order metabolism (and maybe 2nd fat compartment?)
  d. Show improvement in model fit
4. Work with updated PERC model
  a. Review code and modeling objectives
  b. Review model with additional code (initially commented out)
  c. Enable code, show fit to Odum data with some notional parameter values, use sliders to explore
  d. Show CMD script with code to estimate TCA metabolism parameters from Odum
5. Assign homework
  a. Recreate updated model by stepwise addition of TCA parameters and equations on your own
  b. Run the CMD script to estimate parameters
  c. Create new CMD script to:
    - Run the model with fitted parameters and show fit to Odum data
    - Reparameterize as human with supplied parameters and show fit to one or more of the human data sets 
