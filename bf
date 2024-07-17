#!/usr/bin/env bqn

max←100 ⋄ pad←2
other‿ws‿cm‿quote←↕4

ch←•FLines "/dev/stdin"
t←∨´ws‿ws‿cm‿quote‿quote×ch⊸=¨"  #'"""  # tokenise characters
v←0<≠∘/¨0≠(/¨t=other)⍋¨/¨t=cm           # mark lines with valid cms for formatting
q←¬(t=cm)∧≠`¨t=quote                    # comments within quotes
m←v∧q∧t=cm                              # mask of valid comments
e← ch↓˜¨∾1↑¨/¨m                         # grouped characters
z←⌽¨0<+`¨0=⌽¨t↑˜¨∾1↑¨/¨m                # mark tail whitespaces
g←z/¨ch↑˜¨∾1↑¨/¨m                       # grouped characters remove tail spaces
n←max⌊⌈´(≠¨g)∾(¬v)/≠¨ch                 # find comment with largest column width or find largest line
s←' '¨¨↕¨v×pad+0⌈n-≠¨g
•Out ∾(@+10)⊸∾¨g∾¨s∾¨e
