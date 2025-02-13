# comment with no preceeding code should not be formatted
a←↕10                                     # comment 1
b←↕10 ⋄ c←↕10 ⋄ d←10                      # comment 2 # comment
e←"this string # should not be formatted" # However this comment should be formatted
x←↕10                                     # comment space should reduced


f←'#'                                     # FIXME: Should not format comment char but should format comment next to it
# FIXME: should not be formatted # should not be formatted
"'"                                       # FIXME: this should be formatted
'''                                       # FIXME: this should be formatted
