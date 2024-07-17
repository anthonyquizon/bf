#!/usr/bin/env bqn

max_col←40
other‿space‿tab‿comment‿newline←↕5

ch←•FLines "/dev/stdin"
t←∨´space‿comment‿tab‿newline×ch⊸=¨" #"∾(@+9‿10) # tokenise characters
m←0<≠∘/¨0≠(/¨t=other)⍋¨/¨t=comment # mark lines with valid comments for formatting
n←max_col⌊⌈´∾/¨m∧t=comment # find largest column width
s←' '¨¨↕¨∾1↑¨n-/¨m∧t=comment # spaces to prepend behind comments
e← ch↓˜¨∾1↑¨/¨m∧t=comment # grouped characters
•Out ∾(@+10)⊸∾¨e∾˜¨s∾˜¨ch↑˜¨∾1↑¨/¨m∧t=comment # grouped characters
