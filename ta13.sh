#!/usr/bin/env bash
for i in *; do
#“if -e ” means if the file exist，it is true.
if [ -e $i/fort.13 ]; then
echo -e $i "\t" $(grep '   ' $i/fort.13 |tail -n 4 | awk '{print $1}')
fi
done