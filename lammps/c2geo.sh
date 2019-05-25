#!/bin/bash
if (test -f CONTCAR) then d2c.py CONTCAR;fi
read -p "enter the atom number:" number
tail -$number CONTCAR_C >cont
awk '{printf("%.5f   %.5f   %.5f\n", $1, $2, $3) >100}' cont
cat 100
rm cont 100
