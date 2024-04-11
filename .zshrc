#   _____ _____ _____ _____ _____ 
#  |__   |   __|  |  | __  |     |
#  |   __|__   |     |    -|   --|
#  |_____|_____|__|__|__|__|_____|
#
#  by Bina


# -- $PATH variable --
export PATH=$HOME/bin:/usr/bin:/usr/local/bin:$PATH

# -- oh-my-zsh --
# https://github.com/ohmyzsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=( 
    git
    zsh-autosuggestions
    zsh-autocomplete
    zsh-syntax-highlighting
    fast-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# -- general settings --
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

# -- pywal --
source ~/.cache/wal/colors-tty.sh
(cat ~/.cache/wal/sequences &)

# -- xcursor --
export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons

# -- aliases --
# can be written to a separate file in $ZSH/custom
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias zsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
# -g : global aliases work anywhere on the command line
alias -g G='| grep'
alias -g L='| less'
alias -g W='| wc -l'
alias -g H='| head'
alias c="clear"
alias vd="vim diff"
alias gcl="git clone"
alias gs="git status"
alias gi="git init"
alias ga="git add"
alias gm="git commit -m"
alias gp="git push"
alias gb="git branch"
alias gc="git checkout"
alias gcb="git checkout -B"
alias gcm="git checkout master"
alias gpu="git pull"
alias gpo="git pull origin"
alias gl="git log"
alias gd="git diff"
alias gra="git remote add"
alias grr="git remote rm"
alias gsh="git stash"




