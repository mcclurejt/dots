# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/mcclurejt/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"
# configuration details available here: https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL='❯'
SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_VI_MODE_INSERT='[INSERT]'
SPACESHIP_VI_MODE_NORMAL='[NORMAL]'
SPACESHIP_VI_MODE_COLOR=11
SPACESHIP_GIT_PREFIX=''
SPACESHIP_DIR_PREFIX=''
SPACESHIP_DIR_SUFFIX=' '
SPACESHIP_DIR_COLOR=11
SPACESHIP_PROMPT_ORDER=(
	user
	dir
	host
	jobs
	exit_code
	char
)
SPACESHIP_RPROMPT_ORDER=(
	vi_mode
	git
)
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

## Plugins
# - fzf must be installed for interactive cd
plugins=(git brew fasd osx fast-syntax-highlighting tmux vi-mode)

# zsh tmux settings
ZSH_TMUX_AUTOSTART='true'

source $ZSH/oh-my-zsh.sh

## User configuration ##

# You may need to manually set your language environment
export LANG=en_US.UTF-8

DEFAULT_USER='mcclurejt'

# Aliases
# alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
# alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'

# Enable "vi" mode
bindkey -v
export KEYTIMEOUT=1 # .1 second delay between modes

# Enable "ls" coloring
export CLICOLOR=1

# iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Needed for homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# fasd
eval "$(fasd --init auto)"

# auto cd
setopt auto_cd

# Ranger
export EDITOR="vim"

# Go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
