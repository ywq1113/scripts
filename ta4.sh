#!/usr/bin/env bash
for i in *; do
#if -e means if the file exist it is true.
if [ -e $i/fort.4 ]; then
# echo -e "\t" means that it insert tab
echo -e $i "\t\c"
awk 'NR==106{print}' fort.4 | sed '2,$s/^/\t/g'
fi
done