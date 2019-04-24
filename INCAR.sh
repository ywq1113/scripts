#!/bin/bash
# you can choose which type INCAR file to use
cat <<EOF
*************************************
 The following is optional INCAR file
*************************************
   1) OPT
   2) NEB
   3) OPT+U
   4) EXIT
*************************************
EOF
read -p "please enter your choice:" option
case $option in
  1)
    cp opt INCAR
   ;;
  2)
    cp neb INCAR
   ;;
  3)
    cp opt+U INCAR
   ;;
  4)
    break
esac
