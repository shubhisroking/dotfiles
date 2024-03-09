# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "Aloxaf/fzf-tab"
plug "romkatv/powerlevel10k"
plug "hlissner/zsh-autopair"
plug "zsh-users/zsh-completions"

# Load and initialise completion system
autoload -Uz compinit
compinit

eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"
source $HOME/.alias.zsh

# bun completions
[ -s "/home/shubh/.bun/_bun" ] && source "/home/shubh/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fnm
export PATH="/home/shubh/.local/share/fnm:$PATH"
eval "`fnm env`"

# miniconda
eval "$(/home/shubh/miniconda3/bin/conda shell.zsh hook)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

