#!/bin/bash
gnuplot -e "fin='./bar_error.data';" -e "fout='./bar_error.ps';" -e "args='bar_error_args.gnu'" bar_error.gnu
gnuplot -e "fin='./linespoint.data';" -e "fout='./linespoint.ps';" -e "args='linespoint_args.gnu'" -e "xtitle='Throughput (Kops/s)'" -e "ytitle='Latency ({/Symbol m}s)'" linespoint.gnu
gnuplot -e "fin='./cdf_1.data';" -e "fout='./cdf_1.ps';" -e "args='cdf_args.gnu'" -e "xtitle='Value'" -e "ytitle='CDF'" cdf_1.gnu
gnuplot -e "fin='./cdf_2.data';" -e "fout='./cdf_2.ps';" -e "args='cdf_args.gnu'" -e "xtitle='Value'" -e "ytitle='CDF'" cdf_2.gnu
gnuplot -e "fin='./filledcurve.data';" -e "fout='./filledcurve.ps';" -e "args='filledcurve_args.gnu'" filledcurve.gnu
eps="ps"
pdf="pdf"
for epsfile in $(ls ./*.ps)
do
     ps2pdf -dEPSCrop $epsfile ${epsfile//$eps/$pdf}
done


