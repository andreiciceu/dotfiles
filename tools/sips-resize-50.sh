#!/bin/bash
if [[ ! $1 ]]; then
    echo "Usage: $0 /path/to.*.@2x"
    exit 0
fi

for f in $(ls $1"/*@2x.(png|PNG|jpg|JPG|jpeg|JPEG)")
do
    filename=$(basename $f | sed 's/@2x././g')
    echo $filename

    H=$(sips -g pixelHeight "$f" | grep 'pixelHeight' | cut -d: -f2)
    W=$(sips -g pixelWidth "$f" | grep 'pixelWidth' | cut -d: -f2)

    H50=$(($H / 2))
    W50=$(($W / 2))

    sips --resampleHeight "$H50" "$f" >/dev/null
done
