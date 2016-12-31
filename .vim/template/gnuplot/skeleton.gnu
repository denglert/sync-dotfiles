outPDF =  "out.pdf"
set term pdf enh color dashed font "Helvetica,10"
set output outPDF
set fit logfile "fit.log"


## X
#set xlabel "x"
#set xrange [0:1]
#set xtics   
#set mxtics  
#
## Y
#set ylabel "y"
#set yrange [0:1]
#set ytics  
#set mytics  

#{/Symbol p}
#set nokey

#set fit errorvariables
#FIT_MAXITER = 200
#fit [low:high] f(x) '.dat' using : every ::0 via a0, a1, a3

plot '.dat' using ($1):($2) every ::0 lt 1 lc 1 lw 1 ,\
		f(x) lt 1 lc 1 lw 1
