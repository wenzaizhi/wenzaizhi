#!/bin/bash
for i in {71..63}; do
    prefix=$(printf "%03d章" "$i")
    next=$(printf "%03d章" "$((i-30))")
    for f in "$prefix"*; do
        [ -e "$f" ] || continue
        git mv "$f" "$next${f#$prefix}"
    done
done
