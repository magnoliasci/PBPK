import random
import math

#import org.apache.commons.math3.distribution as dist
#import org.apache.commons.math3.random as rand
#rng = rand.JDKRandomGenerator()
#dist = dist.NormalDistribution(rng, 5.0, 1.0)
#for i in range(0, 50):
#    d = dist.sample()
#    print d


# Set a random number generator seed
random.seed(1423253)

print "Starting Monte Carlo iterations..."

# Get a reference to the perc model
m = models.get("PERC.csl")

# Set the prepare list
m.prepare("t")
m.prepare("c_ven")

# Arrays into which conc trajectories will be placed
tt = []
cc = []

# Perform MC iterations
for i in range(0, 50):
    # Assign a random values to some model parameters 
    m.sc_vmax = random.gauss(.0026, .0008)
    m.pc_fat  = random.gauss(144, 20)
    m.pc_liv  = random.gauss(4.6, 1.3)
    m.pc_wp   = random.gauss(8.7, 2.2)
    m.pc_pp   = random.gauss(1.4, 0.3)
    m.pc_art  = random.gauss(12.0, 0.42)
    
    # Run the simulation
    m.run()
    
    # Append time and conc trajectories to local variables
    tt.append(m.history("t"))
    cc.append(m.history("c_ven"))

# Plot results
h = plot.line(tt, cc, "-R", "c_ven")

print "Done."

