#!/bin/sh

if [ "$(uname -s)" == "Darwin" ]; then
  glibtoolize --copy --force
else
  libtoolize --copy --force
fi

aclocal
autoheader
automake -a -c --foreign
autoconf
