# history in cache directory
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=100000
SAVEHIST=100000

# brew app paths
export PATH="/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# unset hell screech
unsetopt beep

# auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)   # Include hidden files.

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

# fix backspace after normal -> insert
bindkey "^?" backward-delete-char

# tab completion navigation
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# history nav bindings
bindkey '^P' up-history
bindkey '^N' down-history

# history search
bindkey '^J' history-beginning-search-forward
bindkey '^K' history-beginning-search-backward

typeset -g -A key

# command aliases
alias ls='ls -G'
alias grep='grep --color=always'
function ranger () { command ranger --choosedir=$HOME/.config/ranger/.rangerdir "$@"; cd $(cat $HOME/.config/ranger/.rangerdir); } # echo -e "\x1b[?12;25h";
source ~/.config/lf/lfcd.sh
function vim () { command vim "$@"; printf "\e[5 q"; }
function nvim () { command nvim "$@"; printf "\e[5 q"; }
#alias code='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'

bindkey "\0330H" beginning-of-line # home
bindkey "\0330F" end-of-line # end

# ctrl/alt + backspace/delete
bindkey "\033cb" backward-kill-word
bindkey "\033ab" backward-kill-word
bindkey "\033cd" kill-word
bindkey "\033ad" kill-word

# alt + left/right
bindkey "\033ar" forward-word
bindkey "\033al" backward-word

# page up/down (not needed for terminal)
bindkey "\033[5~" page-up
bindkey "\033[6~" page-down

# allow ^ glob operator for match excludes
setopt extendedglob

# Load zsh-syntax-highlighting; should be last.
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue'
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
