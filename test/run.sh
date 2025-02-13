#!/usr/bin/env bash
cd "$(dirname "$0")"
diff <(cat a.bqn | ../bf) <(cat b.bqn)
