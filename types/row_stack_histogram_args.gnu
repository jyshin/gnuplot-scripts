#!/usr/bin/gnuplot

###############################################################################
# KEY (LEGEND)
###############################################################################

#set key
#set nokey
set key left top
#set key box
#set key at 7,5000
#set key font "Helvetica, 11"
#set key spacing 0.9
#set key samplen 3

###############################################################################
# X LABEL AND TICS
###############################################################################

#set xtics out scale 0.5,0
set xrange[*:*]
#set xtics rotate by 0 ("T1-1" 1, "T1-2" 2, "T1-3" 3, "T2-1" 4, "T2-2" 5, "T3-1" 6, "T3-2" 7)
set xtics rotate by 300
set xtics nomirror 
set tics out
set xlabel offset 0, 0, 0

###############################################################################
# Y LABEL AND TICS
###############################################################################

set yrange[0:*]
#set ytics nomirror
#set ytic("0" 0, "100" 100, "200" 200, "300" 300, "400" 400, "500" 500, "600" 600)
#set y2label "Ks of TXes/sec"
#unset y2label
#set y2range[0:]
#set y2tics 5
#set y2tic("" 5, "" 10, "" 15, "" 20, "" 25)

set bmargin 5

