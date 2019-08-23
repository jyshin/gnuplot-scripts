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

plot for[i=2:*] fin using 1:i lt (i+1) title columnheader(i)

