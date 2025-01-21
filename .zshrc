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
# decide on a theme (or create your own)
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

# -- zoxide --
# z as alternative to cd navigating via path fragments
# case insensitive, only last component must match the path
# frecency algorithm (combination of frequency and recency)
# interactive zoxide zi lists visited dirs with their score
# rebind cd command using cd and cdi
eval "$(zoxide init --cmd cd zsh)"

# -- aliases --
# can be written to a separate file in $ZSH/custom
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME" # this is for my personal dotfiles repo
alias zsh="vim ~/.zshrc"
alias szsh="source ~/.zshrci"
alias fetch="c;fastfetch --colors-block-range-start 9 --colors-block-width 3;"
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
alias fastfetch-theme-selector="bash ~/.config/fastfetch-theme-selector/FastCat/fastcat.sh -s"

