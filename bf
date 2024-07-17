#!/usr/bin/env bqn

#none‿space‿tab‿comment‿newline←↕5
#any←none

#Format ← {
  #ch←𝕩 ⋄ t←@

  #•Show ch
  #{ t↩∨´space‿comment‿tab‿newline×ch⊸=¨" #"∾(@+9‿10) } # tokenise characters
  ##{ m←t=newline ⋄ t↩ } 
  #{ 
    #•Show +`t=newline
    #•Show +`t=comment

  #} # first 

#}

#Main ← {
  #𝕊 ⟨⟩: Format •FChars"/dev/stdin";
  #𝕊 𝕩 : Format¨•file.Chars¨𝕩
#}

•Show •args
•Show •FChars "/dev/stdin"

#Format¨•file.Chars¨f

# get filename from args
# column number from args or from env variable
# load file
# split between first #
# if non white space on left 
  # find distance between last non whitespace and #
  # add

