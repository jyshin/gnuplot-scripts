#!/usr/bin/gnuplot

set print "-"

str_pair_add(str, lhs, rhs)=sprintf("%s=%s.\"    %s='%s'\n\"", str, str, lhs, rhs)

help_string="Usage: gnuplot -e \"fin='<input file path>';"
help_string=help_string." fout='<output file path>'; "
help_string=help_string."[optional param = 'optional value';]\"\n - Optionals\n"
eval str_pair_add("help_string", "width", "<output width: e.g., 3in>")
eval str_pair_add("help_string", "height", "<output height: e.g., 2in>")
eval str_pair_add("help_string", "xtitle", "<x-axis title>")
eval str_pair_add("help_string", "ytitle", "<y-axis title>")
eval str_pair_add("help_string", "fontsize", "<font name, size: e.g., Helvetica,15>")
eval str_pair_add("help_string", "args", "<arg file path>")
#eval str_pair_add("help_string", "", "<>")

if ((!exists("fin")) || (!exists("fout"))) print help_string; exit;
if (!exists("width"))		width="3in"
if (!exists("height"))		height="3in"
if (!exists("xtitle"))		xtitle=""
if (!exists("ytitle"))		ytitle=""
if (!exists("fontsize"))	fontsize="Helvetica,14"
if (!exists("args"))		args=""; else load args
#if (!exists("")) =""

param_string="Using: \n"
eval str_pair_add("param_string", "fin", fin)
eval str_pair_add("param_string", "fout", fout)
eval str_pair_add("param_string", "width", width)
eval str_pair_add("param_string", "height", height)
eval str_pair_add("param_string", "xtitle", xtitle)
eval str_pair_add("param_string", "ytitle", ytitle)
eval str_pair_add("param_string", "fontsize", fontsize)
eval str_pair_add("param_string", "args", args)
#eval str_pair_add("param_string", "", )

print param_string

set term postscript eps enhanced size width,height font fontsize
set output fout

if (xtitle eq "") unset xlabel; else set xlabel xtitle
if (ytitle eq "") unset ylabel; else set ylabel ytitle

