#!/usr/bin/env bash
for i in $(find . -name INCAR); do
   cd $(dirname $i)
   rm CHG CHGCAR PCDAT REPORT OSZICAR WAVECAR EIGENVAL IBZKPT DOSCAR XDATCAR -f
   tar zcvf OUTCAR.tar.gz OUTCAR outcar vasprun.xml CONTCAR 
   rm outcar vasprun.xml   
   cd $OLDPWD;
done   