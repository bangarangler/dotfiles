# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jonathanpalacio/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# ORDER
SPACESHIP_PROMPT_ORDER=(
  time     #
  vi_mode  # these sections will be
  user     # before prompt char
  host     #
  char
  dir
  git
  node
  ruby
  xcode
  swift
  golang
  docker
  venv
  pyenv
)
SPACESHIP_VI_MODE_SHOW=false

# USER
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX="" # remove space before host

# HOST
# Result will look like this:
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@:("
SPACESHIP_HOST_SUFFIX=") "

# DIR
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='1' # show only last directory

# GIT
# Disable git symbol
#SPACESHIP_GIT_SYMBOL="" # disable git prefix
#SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# Wrap git in `git:(...)`
#SPACESHIP_GIT_PREFIX='git:('
#SPACESHIP_GIT_SUFFIX=") "
#SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# Unwrap git status from `[...]`
#SPACESHIP_GIT_STATUS_PREFIX=""
#SPACESHIP_GIT_STATUS_SUFFIX=""

## NODE
#SPACESHIP_NODE_PREFIX="node:("
#SPACESHIP_NODE_SUFFIX=") "
#SPACESHIP_NODE_SYMBOL=""

## RUBY
#SPACESHIP_RUBY_PREFIX="ruby:("
#SPACESHIP_RUBY_SUFFIX=") "
#SPACESHIP_RUBY_SYMBOL=""

## XCODE
#SPACESHIP_XCODE_PREFIX="xcode:("
#SPACESHIP_XCODE_SUFFIX=") "
#SPACESHIP_XCODE_SYMBOL=""

## SWIFT
#SPACESHIP_SWIFT_PREFIX="swift:("
#SPACESHIP_SWIFT_SUFFIX=") "
#SPACESHIP_SWIFT_SYMBOL=""

## GOLANG
#SPACESHIP_GOLANG_PREFIX="go:("
#SPACESHIP_GOLANG_SUFFIX=") "
#SPACESHIP_GOLANG_SYMBOL=""

## DOCKER
#SPACESHIP_DOCKER_PREFIX="docker:("
#SPACESHIP_DOCKER_SUFFIX=") "
#SPACESHIP_DOCKER_SYMBOL=""

## VENV
#SPACESHIP_VENV_PREFIX="venv:("
#SPACESHIP_VENV_SUFFIX=") "

## PYENV
#SPACESHIP_PYENV_PREFIX="python:("
#SPACESHIP_PYENV_SUFFIX=") "
#SPACESHIP_PYENV_SYMBOL=""
#ZSH_THEME="spaceship"
#SPACESHIP_PROMPT_ADD_NEWLINE=”true”
#SPACESHIP_CHAR_SYMBOL=”\ue77d"
#SPACESHIP_CHAR_PREFIX=”\uf13d"
#SPACESHIP_CHAR_SUFFIX=(“ “)
#SPACESHIP_CHAR_COLOR_SUCCESS=”yellow”
#SPACESHIP_PROMPT_DEFAULT_PREFIX=”$USER”
#SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=”true”
#SPACESHIP_USER_SHOW=”true”

#e77d
#f13d

#source $(dirname $(gem which colorls))/tab_complete.sh



# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-nvm git z zsh-syntax-highlighting)

#~/z.sh
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
bindkey -v


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
 source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
 source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ANDROID_HOME=/Users/jonathanpalacio/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:/Users/jonathanpalacio/Library/Android/sdk/platform-tools/
export PATH="/usr/local/bin:$PATH"


alias config='/usr/bin/git --git-dir=/Users/jonathanpalacio/.cfg/ --work-tree=/Users/jonathanpalacio'
alias ls=colorls —-sd

alias skeleton='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/skull.txt'
alias casper='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/casper-evil.txt'
alias succubus='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/succubus.txt'
alias warlock='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/warlock.txt'
alias taz='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/taz.txt'
alias unicorn='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/unicorn.txt'
alias devil='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/devil-made-me.txt'
alias charizard='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/charizard.txt'
alias blastoise='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/blastoise.txt'
alias ninetails='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/ninetails.txt'
alias arcanine='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/arcanine.txt'
alias gengar='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/gengar.txt'
alias gyarados='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/gyarados.txt'
alias eevee='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/eevee.txt'
alias dragonite='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/dragonite.txt'
alias lady='lolcat /Users/jonathanpalacio/Desktop/dev/ascii/lady.txt'

#PYTHON
#alias 2='python2'
#alias 3='python3'
alias python='python3'

#date | lolcat
#lolcat /Users/jonathanpalacio/Desktop/dev/ascii/skull.txt
#figlet -f whimsy Dain! | lolcat
#cal | lolcat
export BAT_THEME=GitHub

alias matrix='LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
#POSTGRES
alias pg_start="pg_ctl -D /usr/local/var/postgres start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop"

alias ctags="`brew --prefix`/bin/ctags"

alias yabaistart='brew services start koekeishiya/formulae/yabai && brew services start skhd'

alias yabaistop='brew services stop koekeishiya/formulae/yabai && brew services stop skhd'

alias iconsoff='defaults write com.apple.finder CreateDesktop -bool false;killall Finder;say icons hidden'

alias iconson='defaults write com.apple.finder CreateDesktop -bool true;killall Finder;say icons visible'

alias workFE="tmuxinator workFE"

alias workBE="tmuxinator workBE"

eval "$(rbenv init -)"


autoload -U promptinit; promptinit
prompt spaceship


export PATH="/usr/local/opt/sqlite/bin:$PATH"


# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc


