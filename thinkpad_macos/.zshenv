export VISUAL=vim

export XDG_CONFIG_HOME=$HOME/.config

# by default / and = are included here meaning that kill-word for example won't use these characters as delimiters
export WORDCHARS="*?_-.[]~&;\!#$%^(){}<>"

# rust
source $HOME/.cargo/env

# brew ruby
#export PATH="/usr/local/opt/ruby/bin:$PATH" # on macos paths get prepended after ~/.zshenv so I've moved this to .zshrc
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# python apps
export PATH=$PATH:/Users/davidhamill/Library/Python/3.8/bin

# vulkan sdk
source /Users/davidhamill/VulkanSDK/1.2.176.1/setup-env.sh

# vim config
export VIMINIT="source $HOME/.config/vim/.vimrc"

# less: ascii colors and no bell
#export LESS="$LESS -R -Q"
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

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

