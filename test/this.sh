#!/usr/bin/env bash
cd "$(dirname "$0")"
export TIMEFORMAT='%3R'

echo $@
if [[ "$@" == *"--expect"* ]]; then
    diff <(cat a.bqn | ../bf) <(cat b.bqn)
else
    time cat a.bqn | ../bf
fi

