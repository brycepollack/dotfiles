##### HISTORY #####
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

##### SAFETY #####
setopt NO_NOMATCH

##### HOMEBREW #####
BREW_PREFIX="/opt/homebrew"

##### PLUGINS #####
# Enable completion system
autoload -Uz compinit
compinit

# Better completion UX
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' format '%F{yellow}-- %d --%f'
zstyle ':completion:*' completer _complete _match _approximate

# Autosuggestions
source $BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
source $BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

##### ALIASES #####
alias ll='ls -lah'

##### PATH #####
export PATH="$HOME/.local/bin:$PATH"

##### NVM #####
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && \. "$(brew --prefix nvm)/nvm.sh" # This loads nvm
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix nvm)/etc/bash_completion.d/nvm" # This loads nvm bash_completion

##### STARSHIP #####
eval "$(starship init zsh)"
