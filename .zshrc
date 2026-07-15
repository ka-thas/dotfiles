# ── p10k instant prompt (keep at top) ────────────────────────
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ── oh-my-zsh ─────────────────────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="Powerlevel10k/Powerlevel10k"
plugins=(git vscode)
source $ZSH/oh-my-zsh.sh

# ── path ──────────────────────────────────────────────────────
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# ── nvm ───────────────────────────────────────────────────────
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ── misc ──────────────────────────────────────────────────────
export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. "$HOME/.local/bin/env"
eval "$(zoxide init zsh --cmd cd)"

# ── ssh aliases ───────────────────────────────────────────────
alias ifi='ssh ifi'
alias uio='ssh kavint@login.uio.no'
alias ifi-adenin='ssh -J kavint@login.uio.no kavint@adenin.ifi.uio.no'
alias ifi-sytosin='ssh sytosin'
alias ifi-guanin='ssh -J kavint@login.uio.no kavint@guanin.ifi.uio.no'
alias ifi-tymin='ssh -J kavint@login.uio.no kavint@tymin.ifi.uio.no'
alias ifi-gimli='ssh -J kavint@login.uio.no kavint@gimli.ifi.uio.no'
alias ifi-galadriel='ssh -J kavint@login.uio.no kavint@galadriel.ifi.uio.no'
alias ifi-cupid='ssh -J kavint@login.uio.no kavint@cupid.ifi.uio.no'
alias robin-hpc='ssh kavint@hpc.robin.uiocloud.no'

# ── local aliases ─────────────────────────────────────────────
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='eza --icons'
alias l='eza --icons'
alias la='eza -a --icons'
alias active='cd ~/Desktop/Semester-8/'
alias os='cd ~/Desktop/Semester-8/IN4000/repo/'
alias grl='cd ~/Desktop/IN1160-V26/'

# ── p10k ──────────────────────────────────────────────────────
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# libpq (psql client) — keg-only via Homebrew
export PATH="/usr/local/opt/libpq/bin:$PATH"
