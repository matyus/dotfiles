# Disable the bell so that jumping words isn't noisy
unsetopt beep

# Jump words on the iTerm2 command line using opt + arrow left/right
bindkey "[D" backward-word
bindkey "[C" forward-word
