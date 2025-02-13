#!/usr/bin/env bash
cd "$(dirname "$0")"

for f in cases/*
do
    f=$(basename $f)
    diff <(cat cases/$f | ../bf) <(cat expect/$f)
done


