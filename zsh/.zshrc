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

eval "$(zoxide init zsh)"

# ALIASES
alias ip="ipconfig getifaddr en0"

alias ls="eza -l --icons --group-directories-first --git"
alias la="eza -la --icons --group-directories-first --git"
alias lt="eza --tree --icons"

alias zi='cd "$(zoxide query -i)"'

alias gitl='git log --graph --decorate --abbrev-commit'
alias gits="git status --show-stash"
alias gita="git add ."
alias gitp="git push"

alias wgup='sudo wg-quick up wg0'
alias wgdown='sudo wg-quick down wg0'

alias vim="nvim"
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

# fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs -g "!*.git/*"'
export FZF_DEFAULT_OPTS="--bind=ctrl-j:down,ctrl-k:up"
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi
source <(fzf --zsh)

tmux-sessionizer() {
  local dir
  dir=$(find ~/github.com -mindepth 1 -maxdepth 1 -type d 2>/dev/null | fzf --height 40% --reverse)
  if [[ -n "$dir" ]]; then
    local session_name=$(basename "$dir")
    
    # Print the command to execute
    BUFFER="tmux-session-switch '$session_name' '$dir'"
    zle accept-line
  fi
}
zle -N tmux-sessionizer
bindkey '^o' tmux-sessionizer

# Helper function to switch/create tmux session
tmux-session-switch() {
  local session_name=$1
  local dir=$2
  
  if [[ -z "$TMUX" ]]; then
    # Not in tmux
    if tmux has-session -t "$session_name" 2>/dev/null; then
      tmux attach-session -t "$session_name"
    else
      tmux new-session -s "$session_name" -c "$dir"
    fi
  else
    # Already in tmux
    if ! tmux has-session -t "$session_name" 2>/dev/null; then
      tmux new-session -d -s "$session_name" -c "$dir"
    fi
    tmux switch-client -t "$session_name"
  fi
}
