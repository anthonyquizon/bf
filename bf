#!/usr/bin/env bqn

max_col←50
other‿cm‿quote←↕3

ch←•FLines "/dev/stdin"
t←∨´cm‿quote‿quote×ch⊸=¨"#'"""      # tokenise characters
v←0<≠∘/¨0≠(/¨t=other)⍋¨/¨t=cm       # mark lines with valid cms for formatting
q←¬(t=cm)∧≠`¨t=quote                # comments within quotes
m←v∧q∧t=cm                          # mask of valid comments
n←max_col⌊⌈´∾/¨m                    # find largest column width
s←' '¨¨↕¨∾1↑¨0⌈¨n-/¨m               # spaces to prepend behind cms
e← ch↓˜¨∾1↑¨/¨m                     # grouped characters
•Out ∾(@+10)⊸∾¨e∾˜¨s∾˜¨ch↑˜¨∾1↑¨/¨m # grouped characters
