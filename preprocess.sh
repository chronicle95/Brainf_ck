#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <bf interpreter you like>" >&2
	exit 1
fi

echo Patching bfx-ml.bpp with bfx-str...
cat bfx-ml.bpp | $1 bfx-str.b > tmp

echo Patching bfx-ml.b with bfx-filt...
cat tmp | $1 bfx-filt.b > tmp2

echo Patching bfx-ml.b with bfx-opt...
cat tmp2 | $1 bfx-opt.b > bfx-ml.b

echo Removing temporary files...
rm tmp tmp2

echo Done.
