## Config as of November 26 2022

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:/opt/homerew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

# changing default color scheme for dir/files

# Alias and plugins
export EDITOR='nvim'
alias vim="nvim"
alias look="history | fzf"
alias ls="lsd"
alias cat="bat -P"
alias k="kubectl"
alias rg="ripgrep"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-z/zsh-z.plugin.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-completions/zsh-completions.plugin.zsh

set ZSH_THEME="powerlevel10k"
plugins=(
  zsh-autosuggestions
  git
  zsh-syntax-highlighting
  zsh-z
  zsh-completions
 )

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

