# path
export PATH=$HOME/Documents/bin:$HOME/Documents/scripts:$PATH

# zsh word commands skip these characters
# by default this includes / and =
export WORDCHARS="*?_-.[]~&;\!#$%^(){}<>"

# default programs
export VISUAL=nvim
export TERMINAL=alacritty
export BROWSER=brave

# config locations
export XDG_CONFIG_HOME=$HOME/.config
#export MYVIMRC=$HOME/.config/vim/.vimrc
#export VIMINIT="source ${MYVIMRC}"

# data locations
export CARGO_HOME=$HOME/.local/share/cargo
export RUSTUP_HOME=$HOME/.local/share/rustup

# enable gpg command line
export GPG_TTY=$(tty)

# use doas instead of sudo in rua
export RUA_SUDO_COMMAND="doas"

# defines installed vulkan layers (enabled by the application)
export VK_LAYER_PATH=/usr/share/vulkan/explicit_layer.d

# dark theme for gtk apps
#export GTK_THEME=Yaru-Orange-dark
export GTK_THEME="$(cat ~/.config/theme_gtk)"

# less: ascii colors and no bell
export LESS="$LESS -R -Q"
# termcap color customisation (e.g. affects less and man):
# escape sequence format: \e[<SGR>m
# https://en.wikipedia.org/wiki/ANSI_escape_code#SGR
# https://en.wikipedia.org/wiki/ANSI_escape_code#3-bit_and_4-bit
# https://unix.stackexchange.com/questions/501156/personalize-colored-man-pages-zsh-plugin-colors
# https://unix.stackexchange.com/questions/108699/documentation-on-less-termcap-variables
export LESS_TERMCAP_mb=$'\e[6m'			# begin blinking
export LESS_TERMCAP_md=$'\e[33m'		# begin bold
export LESS_TERMCAP_us=$'\e[34m'		# begin underline
export LESS_TERMCAP_so=$'\e[35m'		# begin standout-mode - info box
export LESS_TERMCAP_me=$'\e[0m'			# end mode
export LESS_TERMCAP_ue=$'\e[0m'			# end underline
export LESS_TERMCAP_se=$'\e[0m'			# end standout-mode

#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
#export ANDROID_SDK_ROOT=/home/david/software/android-sdk
#export ANDROID_NDK_ROOT=$ANDROID_SDK_ROOT/ndk/22.0.6917172
#export ANDROID_SDK_HOME=/home/david/mnt/data/android
#export _JAVA_AWT_WM_NONREPARENTING=1
