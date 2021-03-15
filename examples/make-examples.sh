#!/bin/bash

for pat in `grep -A1 "Allowed values for pattern" gridpapers.sty | tail -n1 | cut -d\{ -f2 | cut -d\} -f1 | tr , ' '`; do
    for col in `grep -A1 "Allowed values for colorset" gridpapers.sty | tail -n1 | cut -d\{ -f2 | cut -d\} -f1 | tr , ' '`; do
        for paper in letterpaper a4paper; do
            for area in fullpage textarea; do
                sed -e "s/%PATTERN%/${pat}/" \
                    -e "s/%COLORSET%/${col}/" \
                    -e "s/%PAPERSIZE%/${paper}/" \
                    -e "s/%AREA%/${area}/" \
                    template-complex.notex > ${pat}-${col}-${paper}-${area}.tex
            done
        done
    done
    sed -e "s/%PATTERN%/${pat}/" \
        template-default.notex > ${pat}-default.tex
done
