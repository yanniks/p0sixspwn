#!/bin/sh
export distr=`uname`
if [ $distr = "Darwin" ];then
  glibtoolize
else
  libtoolize
fi
aclocal
autoconf
autoheader
automake -a -c
autoreconf -i
./configure --disable-dependency-tracking
