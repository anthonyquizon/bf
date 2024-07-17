#!/usr/bin/env bqn

max_col←50
other‿space‿tab‿comment‿newline‿quote←↕6

ch←•FLines "/dev/stdin"
# TODO check in between quotes
t←∨´space‿comment‿tab‿newline‿quote×ch⊸=¨" #"""∾(@+9‿10) # tokenise characters
m←0<≠∘/¨0≠(/¨t=other)⍋¨/¨t=comment # mark lines with valid comments for formatting
n←max_col⌊⌈´∾/¨m∧t=comment # find largest column width
s←' '¨¨↕¨∾1↑¨0⌈¨n-/¨m∧t=comment # spaces to prepend behind comments
e← ch↓˜¨∾1↑¨/¨m∧t=comment # grouped characters
•Out ∾(@+10)⊸∾¨e∾˜¨s∾˜¨ch↑˜¨∾1↑¨/¨m∧t=comment # grouped characters
