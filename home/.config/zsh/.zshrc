# aliases
# verbosity and settings
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	df="df -Th" \
	mkdir="mkdir -pv" \
	yt="yt-dlp --embed-metadata -i" \
	yta="yt -x -f bestaudio/best" \
	ffmpeg="ffmpeg -hide_banner"
	
# colorize commands
alias
	ls="eza --group-directories-first --icons=auto" \
  la='ls --all' \
  ll='ls --long' \
  lla='ls --long --all' \
  lt='ls --tree' \
  lta='ls --tree --all' \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ip="ip -color=auto"

# programs
alias
	ka="killall" \
	e="$EDITOR" \
	v="$EDITOR" \
	adb="HOME="$XDG_DATA_HOME"/android adb" \
	startw="dbus-run-session mango"

# load modules
zmodload zsh/complist
autoload -U compinit && compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --oneline --group-directories-first --color=always --icons=always $realpath'
autoload -U colors && colors

# main opts
setopt append_history inc_append_history share_history # better history
# on exit, history appends rather than overwrites; history is appended as soon as cmds executed; history shared across sessions
setopt auto_menu menu_complete # autocmp first menu match
setopt no_case_glob no_case_match # make cmp case insensitive
setopt globdots # include dotfiles
setopt extended_glob # match ~ # ^
setopt interactive_comments # allow comments in shell
unsetopt prompt_sp # don't autoclean blanklines
stty stop undef # disable accidental ctrl s

# history
HISTFILE="${XDG_CACHE_HOME:-${HOME}/.cache}/zsh/history"
HISTSIZE=1000
SAVEHIST=1000

# binds
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^j" backward-word
bindkey "^k" forward-word
# ctrl J & K for going up and down in prev commands
bindkey "^J" history-search-forward
bindkey "^K" history-search-backward
bindkey '^R' fzf-history-widget

# prompt
PS1="%n:%F{blue}%~%f/ $ "

# fzf setup
source <(fzf --zsh)

# source zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
