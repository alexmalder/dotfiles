#  PLUGINS 
source "$XDG_CONFIG_HOME/zi/zi.zsh"

#  TMUX 
if [[ -n "$PS1" ]] && [[ -z "$TMUX" ]] && [[ -z "$SSH_CONNECTION" ]]; then
    tmux attach -t term || tmux new -s term
fi

zi load zsh-users/zsh-syntax-highlighting
zi light zsh-users/zsh-autosuggestions
zi light sunlei/zsh-ssh

source $HOME/.zsh/functions.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/bindkeys.zsh
source $HOME/.zsh/colors.zsh
source $HOME/.zsh/setopts.zsh
source $HOME/.zsh/ztyles.zsh
source $HOME/.zsh/variables.zsh

zle -N rationalise-dot
bindkey . rationalise-dot

# COMPLETIONS 
autoload -Uz compinit && compinit
zmodload -i zsh/complist
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.zsh_history

PROMPT='%{$fg_bold[green]%}%~%<< $(git_prompt_info)%{$fg[magenta]%}>%{${reset_color}%} '

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#scl enable gcc-toolset-10 zsh
