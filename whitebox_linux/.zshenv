export VISUAL=vim
export TERMINAL=alacritty
export BROWSER=brave

export RUA_SUDO_COMMAND="doas"

export XDG_CONFIG_HOME=$HOME/.config
export LC_ALL=C

export MYVIMRC=$HOME/.config/vim/.vimrc
export VIMINIT="source ${MYVIMRC}"

export JAVA_HOME=/usr/lib/jvm/java-14-openjdk
export ANDROID_SDK_ROOT=/home/david/software/android-sdk
export ANDROID_NDK_ROOT=$ANDROID_SDK_ROOT/ndk/22.0.6917172
export ANDROID_SDK_HOME=/home/david/mnt/data/android
export _JAVA_AWT_WM_NONREPARENTING=1

export CARGO_HOME=$HOME/.config/cargo
export RUSTUP_HOME=$HOME/.config/rustup

export PATH=$PATH:/home/david/software/android-sdk/platform-tools:/home/david/Documents/scripts

export VK_LAYER_PATH=/usr/share/vulkan/explicit_layer.d

# less: ascii colors and no bell
export LESS="$LESS -R -Q"
# termcap color customisation:
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
