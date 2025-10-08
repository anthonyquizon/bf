#!/usr/bin/env bqn

[a,b]←⍉>{2↑𝕩⊔˜1⌊+`'#'=𝕩}¨•FLines "/dev/stdin" # separate code (a) and comments (b)
a↩{⌽(∨`' '⊸≠)⊸/⌽𝕩}¨ a                        # remove tail whitespace from code
s←' '¨¨↕¨(0≠≠¨a)×1+(⌈´≠¨a)-≠¨a               # calculate comment prefix whitespace 
•Out ∾∾(@+10)⊸∾¨<˘⍉[a,s∾¨b]                 # prepend whitespace and recombine code and comments
