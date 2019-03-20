# If you come from bash you might have to change your $PATH.
export PATH=/bin:/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/Users/will/Library/Python/2.7/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"
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
