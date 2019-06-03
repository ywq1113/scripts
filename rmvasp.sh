#!/usr/bin/env bash
cat <<EOF
**********************************
  What do you want to delete
**********************************
   1) normal
   2) only input
   3) EXIT
**********************************
EOF
read -p "please make your choice:" option
case $option in
  1)
   for i in $(find . -name INCAR); do
   cd $(dirname $i)
   rm CHG CHGCAR PCDAT REPORT WAVECAR EIGENVAL IBZKPT DOSCAR XDATCAR -f
   tar zcvf OUTCAR.tar.gz OUTCAR outcar vasprun.xml CONTCAR
   rm outcar vasprun.xml
   cd $OLDPWD;
   done
   ;;

  2)
   for i in $(find . -name INCAR); do
   cd $(dirname $i)
   rm CHG CHGCAR PCDAT REPORT WAVECAR EIGENVAL IBZKPT DOSCAR XDATCAR OSZICAR vasprun.xml -f
   tar czvf outcar.tar.gz outcar*
   tar czvf OUTCAR.tar.gz OUTCAR*
   tar czvf CONTCAR.tar.gz CONTCAR*
   rm -f `ls CONTCAR* OUTCAR* outcar* | grep -v "tar"`
   cd $OLDPWD;
   done
   ;;

  3)
   echo "Good luck"
   ;;
esac
