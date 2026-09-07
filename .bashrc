# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
# /etc/omarchy.conf is written by omarchy-dev-link. When absent, force the
# package default instead of preserving a stale inherited dev-link value before
# we decide which rc file to source.
if [[ -f /etc/omarchy.conf ]]; then
  source /etc/omarchy.conf
  export OMARCHY_PATH="${OMARCHY_PATH:-/usr/share/omarchy}"
else
  export OMARCHY_PATH=/usr/share/omarchy
fi
source "$OMARCHY_PATH/default/bash/rc"


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

# ── git aliases ───────────────────────────────────────────────
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit'
alias gcad='git commit -a --amend'
alias gcam='git commit -am'
alias gcm='git commit -m'
alias gl='git pull'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gs='git status'
alias gss='git status --short'

# ── local aliases ─────────────────────────────────────────────
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias d='docker'
alias ff='fzf --preview '
alias ls='eza --icons'
alias l='eza --icons'
alias la='eza -a --icons'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias r='rails'
alias vi='nvim'
alias grep='rg --color=auto'


eval "$(zoxide init bash)"
