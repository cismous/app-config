# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.4.1_1
export PATH=/Users/mous/Apps/dev/apache-maven-3.3.9/bin:${PATH}:$ANDROID_HOME/build-tools/25.0.2:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export GEM_HOME=$HOME/.gem
export PATH="$GEM_HOME/bin:$PATH"

# yarn
export PATH="$HOME/.yarn/bin:$PATH"

# brew
export PATH="$HOME/.linuxbrew/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# mysql
export MYSQL_PATH=/usr/local/Cellar/mysql/5.6.27  
export PATH=$PATH:$MYSQL_PATH/bin

# go
export GOPATH=$HOME/Apps/Go
export PATH=$PATH:$HOME/Apps/Go/bin

# android alias
alias devices='adb devices'

# meteor
export PACKAGE_DIRS=~/.meteor_local_packages

# nodejs & npm prefix config
export NODE_ENV='development'
export PATH=$HOME/.local/bin:$PATH

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="aussiegeek"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew autojump git z colored-man sudo wd history history-substring-search command-not-found encode64)

# Customize
# alias
alias sudo='sudo '
alias hosts='sudo vi /etc/hosts'
alias chosts='cat /etc/hosts'
alias zshrc='vi ~/.zshrc'
alias vimrc='vi ~/.vimrc'
alias bashrc='vi ~/.bashrc'
alias lsppa='ls /etc/apt/sources.list.d/ | grep --color=never "list$"'
alias proxy=proxychains4 -f "/etc/proxychains.conf"
alias down='aria2c --conf-path=${HOME}/.aria2/aria2.conf'
alias genymotion='~/Apps/genymotion/genymotion'

source $ZSH/oh-my-zsh.sh

