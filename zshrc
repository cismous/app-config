# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ANDROID_HOME=$HOME/Apps/android-sdk-linux
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# brew
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# go
export GOPATH="$HOME/go"
export PATH=$PATH:/usr/local/go/bin

# android alias
alias devices='adb devices'

# meteor
export PACKAGE_DIRS=~/.meteor_local_packages

# nodejs
export NODE_ENV='development'

# npm prefix config
export PATH=$HOME/.local/bin:$PATH

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="aussiegeek"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=180

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z colored-man sudo wd history history-substring-search command-not-found)

# Customize
# alias
alias sudo='sudo '
alias hosts='sudo vi /etc/hosts'
alias chosts='cat /etc/hosts'
alias zshrc='vi ~/.zshrc'
alias vimrc='vi ~/.vimrc'
alias bashrc='vi ~/.bashrc'
alias nh='nautilus .'
alias lsppa='ls /etc/apt/sources.list.d/ | grep --color=never "list$"'
alias open='xdg-open'
alias proxy=proxychains4 -f "/etc/proxychains.conf"
alias down='aria2c --conf-path=${HOME}/.aria2/aria2.conf'
alias ss='ss-local -c ~/Apps/shadowsocks-libev/config'
alias ss-us='ss-local -c ~/Apps/shadowsocks-libev/config-us'
alias ss-ali='ss-local -c ~/Apps/shadowsocks-libev/config-ali'
alias genymotion='~/Apps/genymotion/genymotion'
alias qshell='~/Apps/qshell-v1.7.0/qshell_linux_amd64'

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
