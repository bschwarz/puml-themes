#!/bin/sh

if [ $# -ne 3 ]; then
  echo "Usage: $0 hex_color type factor" >&2
  exit 1
fi

clr=$1
factor=$3
X=${clr:0:2}
R=$(( 16#$X ))
Y=${clr:2:2}
G=$(( 16#$Y ))
Z=${clr:4:2}
B=$(( 16#$Z ))

if [ $2 == "shade" ]; then
    let newR=$(( R*1-R*factor ))
    let newG=$(( G*1-G*factor ))
    let newB=$(( B*1-B*factor ))
else
    let newR=$(( R + 255*factor-R*factor ))
    let newG=$(( G + 255*factor-G*factor ))
    let newB=$(( B + 255*factor-B*factor ))
fi

echo "VAL: $( printf "%x\n" $newR ) $newG $newB"