# !/usr/bin/env bash
# Creat a GGA_PAW POTCAR file
# by Bigbro
# To Use it: POT.sh Cu C H O

# Define local potpaw_GGA pseudopotentialrepository:
repo="/home/wanggc/PAW/PBE"

# Check if older version of POTCAR is prensent
if [ -f POTCAR ] ; then
 mv -f POTCAR old-POTCAR
 echo " ** Warning: old POTCAR file found and renamed to 'old-POTCAR'."
 fi
 
# Main loop - concatenate the appropriatePOTCARs (or archives)
for i in $*
do
 if test -f $repo/$i/POTCAR ; then
  cat $repo/$i/POTCAR>> POTCAR
 else
 echo " ** Warning: No suitable POTCAR for element '$i' found!! Skipped this element."
 fi
 done
 
