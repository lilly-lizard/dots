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

# Change cursor shape for different vi modes.
# https://unix.stackexchange.com/questions/433273/changing-cursor-style-based-on-mode-in-both-zsh-and-vim
export KEYTIMEOUT=1
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[2 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# tab completion navigation
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# history nav bindings
bindkey '^P' up-history
bindkey '^N' down-history

# history search (using current text)
bindkey "^K" history-beginning-search-backward
bindkey "^J" history-beginning-search-forward

typeset -g -A key

# allow ^ glob operator for match excludes
setopt extendedglob

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
alias ls='ls --color=always'
alias grep='grep --color=always'
alias egrep='egrep --color'
alias pacman='pacman --color always'
alias dp='doas pacman --color always'
alias ds='doas systemctl'
alias vim='vim -u /home/david/.config/vim/.vimrc'
alias ddocker='doas docker'
alias diff='diff --color=auto'
function ranger() { command ranger --choosedir=$HOME/.config/ranger/.rangerdir "$@"; cd "$(cat $HOME/.config/ranger/.rangerdir)"; } #echo -e "\x1b[?12;25h";
# circle gcc11 workaround
alias circle='circle --nostdinc -I/usr/lib/gcc/x86_64-pc-linux-gnu/11.3.0/include -I/usr/lib/gcc/x86_64-pc-linux-gnu/11.3.0/include/c++ -I/usr/lib/gcc/x86_64-pc-linux-gnu/11.3.0/include/c++/x86_64-pc-linux-gnu'

# ctrl + w
bindkey '^W' backward-kill-word
# ctrl + e
bindkey '^E' kill-word
# alt + backspace
bindkey '\e^?' backward-delete-word

# ctrl + left/right
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^H' backward-word
bindkey '^L' forward-word

# set repeat speed for X11 (because it sometimes get reset)
xset r rate 200 35

#ln -fs /home/david/mnt/data/android ~/.android

# Load zsh-syntax-highlighting (should be last)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
