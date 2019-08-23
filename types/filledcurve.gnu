#!/usr/bin/gnuplot

###############################################################################
# PLOT TYPE
###############################################################################

set style data filledcurves x1
# Options
#    filledcurves closed   ... just filled closed curve,
#    filledcurves x1       ... x1 axis,
#    filledcurves x2       ... x2 axis, etc for y1 and y2 axes,
#    filledcurves y1=0     ... line y=0 (at y1 axis) ie parallel to x1 axis,
#    filledcurves y2=42    ... line y=42 (at y2 axis) ie parallel to x2, etc,
#    filledcurves xy=10,20 ... point 10,20 of x1,y1 axes (arc-like shape).
#    filledcurves above r=1.5  the area of a polar plot outside radius 1.5

#set style data histogram 
#set style histogram cluster gap 1
#set style data linespoints
#set style data lines
#set style data boxerror
#set boxwidth 0.5

###############################################################################
# BASIC SETTINGS
###############################################################################

load "common.gnu"

###############################################################################
# ACTUAL PLOTTING
###############################################################################

plot for[i=0:*] fin index i using 1:2 lt i+1 fill solid i*0.1+0.1 title columnheader(1),\
for[i=0:*] fin index i using 1:2 lt i+1 with lines notitle

