# Path to your oh-my-zsh installation.
export LC_CTYPE=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
export GEM_HOME=$HOME/.gem
export PATH="$GEM_HOME/bin:$PATH"

# fzf
export FZF_DEFAULT_COMMAND='fd --type f'

# Homebrew-bottles 镜像
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# android
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk/
export ANDROID_NDK_HOME=/usr/local/share/android-ndk/
export ANDROID_HOME=$ANDROID_SDK_ROOT
export PATH=${ANDROID_HOME}tools:${ANDROID_HOME}tools/bin:${ANDROID_HOME}platform-tools:${PATH}
export PATH=$ANDROID_HOME/build-tools/28.0.2:$PATH

# flutter
export PATH="$HOME/Apps/flutter/bin:$PATH"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# brew
#export PATH="$HOME/.linuxbrew/bin:$PATH"
#export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
#export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# mysql
#export MYSQL_PATH=/usr/local/Cellar/mysql/5.6.27
#export PATH=$PATH:$MYSQL_PATH/bin

# go
export GOPATH=$HOME/Apps/Go
export PATH=$PATH:$HOME/Apps/Go/bin

# android alias
alias devices='adb devices'

# yarn
export PATH="$HOME/.yarn/bin:$PATH"

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

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew autojump web-search zsh-autosuggestions
 git z colored-man sudo wd history history-substring-search command-not-found encode64)

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
alias codec='code .'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

source $ZSH/oh-my-zsh.sh

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
