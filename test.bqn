# 0: comment with no preceeding code should not be formatted
# 1: comment with no preceeding code should not be formatted
a←↕10           # comment 1
b←↕10 ⋄ c←↕10 ⋄ d←10  # comment 2 # comment
e←"this string # should not be formatted" # However this comment should be formatted
f←'#' # Should not format comment char but should format comment next to it
"'" # FIXME: this should be formatted
''' # FIXME: this should be formatted
