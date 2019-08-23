#!/usr/bin/gnuplot

###############################################################################
# PLOT TYPE
###############################################################################

#set style data filledcurves 
#set style data histogram 
#set style histogram cluster gap 1
#set style data linespoints
set style data lines
#set style data boxerror
#set boxwidth 0.5

###############################################################################
# BASIC SETTINGS
###############################################################################

load "common.gnu"

###############################################################################
# ACTUAL PLOTTING
###############################################################################

plot for[i=0:*] fin index i using 1:2 lt (i+1) title columnheader(1)

#plot for[i=2:*] fin using 1:i lt (i+1) title columnheader(i)

#plot for[i=0:*] fin index i using 1:($2/10) lt (i+1) title columnheader(1)

#plot fin index 0 using 1:2 dt (1,1) title columnheader(1), \
#fin index 1 using 1:2 dt (1,2,4,2) title columnheader(1)
