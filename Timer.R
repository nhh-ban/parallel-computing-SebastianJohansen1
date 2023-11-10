# Timer overview for the three different R scripts located in folder Scripts

library(tictoc)

# Time Original.r 
tic("Original Script")
source("Scripts/Original.r")
toc()

# Time Parallel_Loop.r 
tic("Parallel Loop Script")
source("Scripts/Parallel_Loop.r")
toc()

# Time Parallel_MTweedieTests.r 
tic("Parallel MTweedieTests Script")
source("Scripts/Parallel_MTweedieTests.r")
toc()

# Results (Slow PC, 8 cores)
# Original:               169 sec
# Parallel Loop:          135 sec
# Parallel MTweedieTest:  121 sec

# The Parallel MTweedieTest is likely faster because the call on the simTweedie test function
# is individual, and therefore you could run the same task parallel, instead of one at a time
# This is also kind of true for the Parallel loop method, but it requires more overhead
# to set up, and it has to send the results to the data frame. The overhead is small enough that
# both methods are of value compared to the original version 



