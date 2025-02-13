#!/usr/bin/env bqn

# Reference: https://github.com/codereport/bqn-format/blob/main/bqn-format
max←100 ⋄ pad←2
other‿ws‿cm‿quote←↕4

#Asm ← {¬(≠`⊸∨)"'"""∊˜𝕩}
#•Show Asm "hello '#' "
#•Exit 0

ch←•FLines "/dev/stdin"
t←∨´ws‿ws‿cm‿quote‿quote×ch⊸=¨"  #'""" # tokenise characters
v←0<≠∘/¨0≠(/¨t=other)⍋¨/¨t=cm          # mark lines with valid comments for formatting
q←¬(t=cm)∧≠`¨t=quote                   # comments within quotes
m←v∧q∧t=cm                             # mask of valid comments
e←ch↓˜¨∾1↑¨/¨m                         # grouped comment characters
z←⌽¨0<+`¨0=⌽¨t↑˜¨∾1↑¨/¨m               # mark tail whitespaces
g←z/¨ch↑˜¨∾1↑¨/¨m                      # grouped characters remove tail spaces
n←max⌊⌈´(≠¨g)                          # find comment with largest column width or find largest line
s←' '¨¨↕¨v×pad+0⌈n-≠¨g
•Out 1↓∾(@+10)⊸∾¨g∾¨s∾¨e                
