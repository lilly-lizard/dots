export VISUAL=vim

export MYVIMRC='~/.config/vim/.vimrc'
export VIMINIT='source ${MYVIMRC}'

# less: ascii colors and no bell
export LESS="$LESS -R -Q"
# termcap color customisation:
# escape sequence format: \e[<SGR>m
# https://en.wikipedia.org/wiki/ANSI_escape_code#SGR
# https://en.wikipedia.org/wiki/ANSI_escape_code#3-bit_and_4-bit
# https://unix.stackexchange.com/questions/501156/personalize-colored-man-pages-zsh-plugin-colors
# https://unix.stackexchange.com/questions/108699/documentation-on-less-termcap-variables
export LESS_TERMCAP_mb=$'\e[6m'          # begin blinking
export LESS_TERMCAP_md=$'\e[34m'         # begin bold
export LESS_TERMCAP_us=$'\e[35m'         # begin underline
export LESS_TERMCAP_so=$'\e[30;43m'      # begin standout-mode - info box
export LESS_TERMCAP_me=$'\e[m'           # end mode
export LESS_TERMCAP_ue=$'\e[m'           # end underline
export LESS_TERMCAP_se=$'\e[m'           # end standout-mode

export PATH=~/bin:~/helix-core:$PATH

source ~/documents/env_perforce.sh
