# If you come from bash you might have to change your $PATH.
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:usr/local/bin:/Users/will/Library/Python/2.7/bin:$PATH
export CLICOLOR=1
export VISUAL='subl'

# Preferred editor for local and remote sessions
if [ $SSH_CONNECTION ]; then
  export EDITOR='vim'
else
  export EDITOR=$VISUAL
fi


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="aphrodite"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

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
# ENABLE_CORRECTION="true"

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
plugins=(
  git
  # common-aliases
  npm
  osx
  python
  # pylint
  zsh-autosuggestions
  cd-reminder
  emojis
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# this is so i can ssh directly into zsh if the machine won't let me change hosts lol
# i need to save 4 keystrokes as much as possible
zssh() ssh "$@" -t zsh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias wipe='clear && clear'

# sublime aliases
alias subn='subl -n'
alias subb='subl -b'

# ls aliases
alias l='ls -lFh'
alias la='ls -lAFh'
alias lr='ls -tRFh'
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

# git aliases
alias git-commit-amend='git commit --amend --no-edit'
alias gitlogg='git log --oneline --decorate --graph'

# issue last command with sudo
alias please='sudo $(fc -ln -1)'

alias zshrc='$EDITOR ~/.zshrc'
alias h='history'

alias stdlinux='zssh -t schnicke.4@stdlinux.cse.ohio-state.edu'


# Brazil CLI aliases
alias bb=brazil-build-rainbow
alias bws='brazil ws'
alias bwuse='bws use -p'
alias brc='brazil-recursive-cmd'
alias bbr='brc brazil-build'
alias bball='brc --allPackages'

# Copypasta aliases lol
alias bucks="cat ~/Documents/pasta/buckeye.txt"
alias 🙅="cat ~/Documents/pasta/nah_we.txt"
alias 🤷‍♀️="echo '¯\_(ツ)_/¯'"
alias extra_thicc="echo '乇乂ㄒ尺卂 ㄒ卄丨匚匚'"
