#!/usr/bin/env sh
# -*- coding: UTF8 -*-

# Author: Guillaume Bouvier -- guillaume.bouvier@pasteur.fr
# https://research.pasteur.fr/en/member/guillaume-bouvier/
# 2020-09-29 15:02:54 (UTC+0200)

pbar () {
    I=$1
    N=$2 # Total number of steps
    W=$(tput cols)
    R=$((I * W / N))
    if [ $((R-P)) -gt 0 ]; then
        printf '=%.0s' {1..$((R-P))}
    fi
    export P=$R
}
