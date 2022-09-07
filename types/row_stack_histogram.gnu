#!/usr/bin/gnuplot

###############################################################################
# PLOT TYPE
###############################################################################

#set style data filledcurves 
set style data histogram 
set style histogram rowstacked title offset 0,-0.0
#set style data linespoints
#set style data lines
#set style data boxerror
set boxwidth 0.8

###############################################################################
# BASIC SETTINGS
###############################################################################

load "common.gnu"

###############################################################################
# ACTUAL PLOTTING
###############################################################################

#plot for[i=0:*] fin index i using 1:2 pt (i+1) lt (i+1) title columnheader(1)

plot 	newhistogram "SLFS EBS",\
	for [col=3:7] fin index 0 \
		using col:xticlabels(2) lt 1 fs pattern col title columnheader(col), \
	newhistogram "SLFS S3",\
	for [col=3:7] fin index 1 \
		using col:xticlabels(2) lt 1 fs pattern col notitle, \
	newhistogram "EFS",\
	for [col=3:7] fin index 2 \
		using col:xticlabels(2) lt 1 fs pattern col notitle

#, '' using index i using 3 title columnheader(3)

#plot fin index 0 using 1:2 pt 0 lt 0 title columnheader(1), \
#fin index 1 using 1:2 pt 1 lt 1 title columnheader(1), \
#fin index 2 using 1:2 pt 2 lt 2 title columnheader(1), \
#fin index 3 using 1:2 pt 3 lt 3 title columnheader(1)
