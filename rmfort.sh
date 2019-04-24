#!/usr/bin/env bash
for i in $(find . -name fort.4); do
   cd $(dirname $i)
   mv params param
   cp fort.4 out.4
   cp fort.99 out.99
   cp fort.13 out.13
   tar zcvf out.tar.gz fort*
   rm fort* run.log *s
   mv out.tar.gz fort.tar.gz
   mv param params
   cd $OLDPWD;
done   