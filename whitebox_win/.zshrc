# history in cache directory
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=100000
SAVEHIST=100000

# unset hell screech
unsetopt beep

# auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	# Include hidden files.

# enable colors and change prompt:
autoload -U colors && colors
PS1="%{$fg[magenta]%}[%{$fg[green]%}%n%{$fg[blue]%}@%{$fg[yellow]%}%M %{$fg[cyan]%}%~%{$fg[magenta]%}]%{$reset_color%}$ "

# vi mode
bindkey -v
# show mode status on right
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} ${EPS1}"
	# disable blinking in normal mode
	if [ ${KEYMAP} = 'vicmd' ]; then echo -en '\e[?12l'; else echo -en '\e[?12h'; fi
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
# vi mode backspace after leaving insert mode
bindkey -v '^?' backward-delete-char

# tab completion navigation
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# history nav
bindkey '^P' up-history
bindkey '^N' down-history

# history search (using current text)
bindkey '^K' history-beginning-search-backward
bindkey '^J' history-beginning-search-forward

# ctrl + H/L: forward/backward-word
bindkey '^H' backward-word
bindkey '^L' forward-word

# fixing some key functions
typeset -g -A key
key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"      beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"       end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"    overwrite-mode

# command aliases
# https://en.wikipedia.org/wiki/ANSI_escape_code
# '\e' -> ESC
# '\e[' -> CSI
# '\e[?25h' -> show cursor
# https://docs.microsoft.com/en-us/windows/console/console-virtual-terminal-sequences#cursor-visibility
# '\e[?12h' -> enabling blinking
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# enable blinking and show cursor after ranger
function ranger () { command ranger --choosedir=$HOME/.config/ranger/.rangerdir "$@"; cd $(cat $HOME/.config/ranger/.rangerdir); echo -en "\e[?12;25h"; }
# enable blinking after vim
function vim () { command vim "$@"; echo -en "\e[?12h"; }

# ctrl + backspace
bindkey '^H' backward-kill-word

#bindkey '^[[3^' kill-word
#bindkey '^[Od' backward-word
#bindkey '^[^[[D' backward-word
#bindkey '^[Oc' forward-word
#bindkey '^[^[[C' forward-word

# ctrl + left/right
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# allow ^ glob operator for match excludes
setopt extendedglob

# Load zsh-syntax-highlighting; should be last.
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue'
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
