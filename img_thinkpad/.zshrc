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
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

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

typeset -g -A key

# fixing some key functions
key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"      beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"       end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"    overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}" backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"    delete-char

# command aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
function ranger () { command ranger --choosedir=$HOME/.config/ranger/.rangerdir "$@"; cd $(cat $HOME/.config/ranger/.rangerdir); echo -e "\x1b[?12;25h"; }
function vim () { command vim "$@"; echo -e "\e[?12h"; }
#source $HOME/Documents/scripts/aliases.sh

# bindkeys
bindkey '^H' backward-kill-word
bindkey '^[[3^' kill-word
bindkey '^[Od' backward-word
bindkey '^[^[[D' backward-word
bindkey '^[Oc' forward-word
bindkey '^[^[[C' forward-word

# ctrl + left/right
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# set repeat speed for x (because it sometimes get reset)
#xset r rate 200 35

# allow ^ glob operator for match excludes
setopt extendedglob

# Load zsh-syntax-highlighting; should be last.
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue'
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
