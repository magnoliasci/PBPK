# Since Magnolia can have multiple models loaded
# simultaneously, we have to use a reference to the
# model object we're interested in controlling here
m = models.get("styrene.csl")

def rat():
    # Rat parameters
    m.bw  = 0.3
    m.vfc = 0.09    
    return

def styrene():
    # Chemical parameters
    m.mw    = 104.2
    m.pb    = 40.2
    m.pf    = 50.
    m.pl    = 3.46
    m.pr    = 3.46
    m.ps    = 1.16
    m.vmaxc = 8.36
    m.km    = 0.4
    m.kfc   = 0.5
    return

def shosty():
    rat()
    styrene()

    # Exposure parameters
    m.cc = False
    m.conc = 600. 
    m.pdose =0.
    m.ka = 0.
    m.ivdose = 0.
    m.tchng = 6.
    m.tstop = 24.

    m.prepareAll()
    m.run()

    t  = m.history("t")
    ca = m.history("ca")
    cf = m.history("ca")

    # Create a plot settings object
    ps = plot_settings()
    
    # Set up axis ranges, titles, etc
    ps.title = 'Styrene: Rat, 600 ppm Inhalation'
    ps.xlabel = 'Time (hr)'
    ps.ylabel = 'Conc (mg/L)'
   
    
    # Inidicate which variables will be included on the plot
    ps.pnames = ["CA", "CF"]
    
    # Create the plot
    plot.open("styrene.csl", ps)
    
    return

