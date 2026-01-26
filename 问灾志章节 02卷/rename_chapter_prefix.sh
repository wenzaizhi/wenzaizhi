#!/bin/bash
for i in {65..23}; do
    prefix=$(printf "%03d章" "$i")
    next=$(printf "%03d章" "$((i+1))")
    for f in "$prefix"*; do
        [ -e "$f" ] || continue
        git mv "$f" "$next${f#$prefix}"
    done
done
