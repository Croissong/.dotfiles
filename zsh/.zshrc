zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/skender/.zshrc'

autoload -Uz compinit
compinit
autoload -Uz promptinit
promptinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install

gpg-connect-agent updatestartuptty /bye >/dev/null

source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme avit

# Tell Antigen that you're done.
antigen apply

source ~/.env/keybinds
source ~/.env/alias
source ~/.bin/tmuxinator.zsh

setopt nosharehistory

[[ -z "$TMUX" ]] && tmux attach-session -d