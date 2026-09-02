#!/bin/sh

# default progs
export EDITOR=$(command -v hx || command -v helix || command -v nvim || command -v vis || command -v vi)
export VISUAL="$EDITOR"
export TERMINAL="foot"
export TERMINAL_PROG="$TERMINAL"

# important paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/scripts"

# cleanup
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/shell/inputrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# progopts
export _JAVA_AWT_WM_NONREPARENTING=1
export FZF_DEFAULT_OPTS='
  --color fg:#5d6466,bg:#1e2527
  --color bg+:#ef7d7d,fg+:#2c2f30
  --color hl:#dadada,hl+:#26292a,gutter:#1e2527
  --color pointer:#373d49,info:#606672
  --border
  --color border:#1e2527
  --height 13'
