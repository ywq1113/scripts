#!/bin/bash
# you can choose which type INCAR file to use
cat <<EOF
***************************************
 The following are optional INCAR files
***************************************
   1) OPT
   2) NEB
   3) OPT+U
   4) MORE
   5) EXIT
***************************************
EOF
read -p "please enter your choice:" option
case $option in
  1)
    cp /home/wanggc/ywq/scripts/opt INCAR
     read -p "do you need pbsjob and KPOINTS file(YES/NO):" option2
      case $option2 in
       YES)
        cp /home/wanggc/ywq/scripts/pbsjob pbsjob
        cp /home/wanggc/ywq/scripts/KPOINTS KPOINTS
        echo "KPOINTS: 3 3 1, pbsjob: 1 nodes 20 np"
       ;;
       NO)
       echo "Well, I respect your choice, and you only obtain INCAR file from me"
       ;;
      esac
   ;;
  2)
    cp /home/wanggc/ywq/scripts/neb INCAR
   ;;
  3)
    cp /home/wanggc/ywq/scripts/opt+U INCAR
   ;;
  4)
    echo "You could edit your own INCAR file in this path:/home/wanggc/ywq/scripts/"
   ;;
  5)
    echo "Good luck"
esac
