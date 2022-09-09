#config as of 21 Augustg 2022

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:/opt/homerew/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' frequency 13

# changing default color scheme for dir/files

# Alias and plugins
export EDITOR='lvim'
alias ex="exercism"
alias vim="lvim"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
source /Users/minhs/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/minhs/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

set ZSH_THEME="powerlevel10k"
plugins=(
  zsh-autosuggestions
  git
  zsh-syntax-highlighting
 )
