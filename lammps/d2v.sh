#!/bin/bash
#for i in `seq 300 100 600`;do  
#if -f dump* ;then
cat <<EOF
***********************************************
This scripts help you to generate the vasp file
from lammps dump file.
***********************************************
EOF
read -p "please enter the atoms number:" number
read -p "please enter the temperature(K):" T
read -p "please enter the file name:" dump
tail -$number $dump >300.vasp 
awk '
 BEGIN {
printf("SYSTEM\n \
1.0\n \
23.2284 0.0 0.0\n \
-11.642 20.1164 0.0\n \
0.0 0.0 21.3220\n \
Cu   H   Pt\n \
324  18   9\n \
Cart\n") >300
}
{print $3, $4, $5 >300}' 300.vasp
rm 300.vasp
mv 300 $T.vasp
#fi
#done
