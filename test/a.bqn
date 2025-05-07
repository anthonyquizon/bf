# comment with no preceeding code should not be formatted
a←↕10           # comment 1
b←↕10 ⋄ c←↕10 ⋄ d←10  # comment 2 # comment
e←"this string # should not be formatted" # However this comment should be formatted
x←↕10                                                                                               # comment space should reduced


f←'#' # Should not format comment char but should format comment next to it
    # should not be formatted # should not be formatted
"hello' world" # this should be formatted
''' # this should be formatted
Q←{ 𝕩 } # trailing whitespace should be removed                          
