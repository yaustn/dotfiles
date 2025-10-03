export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

setopt HIST_IGNORE_DUPS         # Ignore duplicate commands in history
setopt HIST_SAVE_NO_DUPS        # Do not write duplicates to history file
setopt SHARE_HISTORY            # Share history across terminals

HISTFILE=$HOME/.zsh_history
HISTSIZE=110000
SAVEHIST=100000

plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-history-substring-search
)

# Keybindings for navigation in autocomplete
bindkey '^P' up-line-or-search      # Ctrl+P for reverse search
bindkey '^N' down-line-or-search    # Ctrl+N for forward search
bindkey '^[[Z' reverse-menu-complete # Shift+Tab for reverse completion

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

# ALIASES
alias ip="ipconfig getifaddr en0"

alias la='eza -laT --level=2 --group-directories-first'
alias ls='eza -laT --level=1 --group-directories-first'
alias l1='eza -lT --level=2 --group-directories-first'
alias l2='eza -laT --level=3 --group-directories-first'

alias gitl='git log --graph --decorate --abbrev-commit'
alias gits="git status --show-stash"
alias gita="git add ."
alias gitp="git push"

alias wgup='sudo wg-quick up wg0'
alias wgdown='sudo wg-quick down wg0'

alias vim='nvim'
alias vi='nvim'
alias vim-config='vim ~/.config/nvim/init.vim'
export EDITOR='nvim'

alias llama-server-mistral='llama-server -hf MatiasMunk/Mistral-7B-Instruct-v0.3-Q4_K_M-GGUF'

# Golang
export PATH=$PATH:$(go env GOPATH)/bin

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Cursor-Agent
export PATH="$HOME/.local/bin:$PATH"
