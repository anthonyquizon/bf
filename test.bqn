# 0: comment with no preceeding code should not be formatted
# 1: comment with no preceeding code should not be formatted
a←↕10           # comment 1
b←↕10 ⋄ c←↕10 ⋄ d←10  # comment 2 # comment
e←"this string # should not be formatted" # However this comment should be formatted

f←'#' # FIXME: Should not format comment char but should format comment next to it
       # Should not format
x←↕10                                                                                               # comment space should reduced
      { ⟨q⇐p⋄i⇐i⟩← l Intersects p ⋄ p↩p∾∘‿3⥊∾q ⋄ l↩l∾¨i ⋄ t↩t∾¨int¨¨i }

    # FIXME: should not be formatted # should not be formatted
"'" # FIXME: this should be formatted
''' # FIXME: this should be formatted
