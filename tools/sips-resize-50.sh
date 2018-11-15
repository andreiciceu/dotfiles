#!/bin/bash
if [[ ! $1 ]]; then
    echo "Usage: $0 /path/to.*.@2x"
    exit 0
fi
    filename=$1
    f = $1
    echo $filename

    H=$(sips -g pixelHeight "$f" | grep 'pixelHeight' | cut -d: -f2)
    W=$(sips -g pixelWidth "$f" | grep 'pixelWidth' | cut -d: -f2)

    H50=$(($H / 2))
    W50=$(($W / 2))

    sips --resampleHeight "$H50" "$f" >/dev/null
