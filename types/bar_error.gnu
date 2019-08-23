#!/usr/bin/gnuplot

###############################################################################
# PLOT TYPE
###############################################################################

#set style data filledcurves 
#set style data histogram 
#set style histogram cluster gap 1
#set style data linespoints
#set style data lines
set style data boxerror
set boxwidth 0.5

###############################################################################
# BASIC SETTINGS
###############################################################################

load "common.gnu"

###############################################################################
# ACTUAL PLOTTING
###############################################################################

plot for[i=0:*] fin index i using 1:2:3 lt 1 fs pattern i title columnheader(1)

#plot fin index 0 using 1:2:3 lt 1 fs pattern 0 title columnheader(1), \
#fin index 1 using 1:2:3 lt 1 fs pattern 1 title columnheader(1), \
#fin index 2 using 1:2:3 lt 1 fs pattern 2 title columnheader(1)

