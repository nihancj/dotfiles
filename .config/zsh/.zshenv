# Paths
export PATH=$PATH:$HOME/.local/bin:$HOME/.config/cargo/bin

# XDG paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Disable files
export LESSHISTFILE=-

# Defining Variables
export EDITOR=nvim ; export EDITORplus="doas nvim"
export TERMINAL=st ; export TERMINALplus=st
export BROWSER=firefox-esr ; export BROWSERplus="tabbed -dcn tabbed-surf -r 2 surf -e '' www.google.com"
export FILEMANAGER=lfub ; export FILEMANAGERplus=pcmanfm
export caps_key="Alt_R"

# Fixing paths
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export XAUTHORITY="$XDG_CONFIG_HOME"/X11/Xauthority
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export PKG_CONFIG_PATH=/usr/lib/pkgconfig
export ANDROID_HOME="$XDG_DATA_HOME"/android

# pfetch settings
# export PF_INFO="ascii title os host kernel uptime pkgs memory palette"
# export PF_ASCII="Linux"
# export PF_COL2="9"
