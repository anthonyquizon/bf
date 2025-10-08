#!/usr/bin/env bqn

[a,b]←⍉>{𝕩⊔˜+`'#'=𝕩}¨•FLines "./test.bqn" # a: code. b: comments
a↩({(∨`∧∨`⌾⌽)' '≠𝕩}⊸/)¨a # remove tail whitespace from code
s←' '¨¨↕¨(0≠≠¨a)×1+(⌈´≠¨a)-≠¨a
•Out ∾∾(@+10)⊸∾¨<˘⍉[a,s∾¨b]
