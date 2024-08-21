# XDG paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Paths
export PATH=$PATH:$HOME/.local/bin:$HOME/Applications:$XDG_DATA_HOME/nvim/mason/bin:/opt/Android/SDK

# Disable files
export LESSHISTFILE=-

# Defining Variables
export EDITOR=nvim ; export EDITORplus="doas nvim"
export TERMINAL=st
export LAUNCHER=dmenu
export BROWSER="firefox-esr --allow-downgrade" ; export BROWSERplus="tabbed -dcn tabbed-surf -r 2 surf -e '' www.google.com"
export FILEMANAGER=lfub ; export FILEMANAGERplus=pcmanfm
export DEFAULT_SESSION_NAME="DWM"; export DEFAULT_SESSION_EXEC="dwm"


# Fixing paths
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export XAUTHORITY="$XDG_CONFIG_HOME"/X11/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export PKG_CONFIG_PATH=/usr/lib/pkgconfig
export ANDROID_HOME=$HOME/android-sdk
export SQLITE_HISTORY="$XDG_CACHE_HOME"/sqlite_history
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GOPATH="$XDG_DATA_HOME"/go
export WINEPREFIX="$XDG_DATA_HOME"/wine
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export GOPATH="$XDG_DATA_HOME"/go
export ANDROID_HOME="$XDG_DATA_HOME"/android
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
# export SDKMAN_DIR="$XDG_DATA_HOME"/sdkman

# pfetch settings
# export PF_INFO="ascii title os host kernel uptime pkgs memory palette"
# export PF_ASCII="Linux"
# export PF_COL2="9"

# Dash source file
export ENV="$HOME/.config/sh/shinit"

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
