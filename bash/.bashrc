# Modify the PS1 variable to adjust command prompt
# /u the username of the current user
# /h the hostname up to the first `.'
# /w the  current  working  directory, with $HOME abbreviated with a tilde (uses the value of the PROMPT_DIRTRIM variable)
# /$ if the effective UID is 0, a #, otherwise a $
# For more PS1 options see the PROMPTING section of `man 1 bash`

PS1="\[$IBlack\]┌—————(\[$BWhite\]\u\[$IBlack\])—————(\[$IBlue\]\w\[$IBlack\]) \n└> \[$BRed\]$ \[$White\]"

# No double entries in the shell history.
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"

# Do not overwrite files when redirecting output by default.
set -o noclobber

# Wrap the following commands for interactive use to avoid accidental file overwrites.
rm() { command rm -i "${@}"; }
cp() { command cp -i "${@}"; }
mv() { command mv -i "${@}"; }

PS1='\[\033[1;36m\]\u\[\033[1;31m\]
 └>\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

