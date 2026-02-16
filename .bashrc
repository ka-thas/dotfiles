# ~/.bashrc — Ka’s colorful setup 🌈

# --- Source global definitions ---
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# --- User PATH setup ---
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# --- Optional: disable systemctl pager ---
# export SYSTEMD_PAGER=

# --- User-specific rc files ---
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    [ -f "$rc" ] && . "$rc"
  done
fi
unset rc

# --- Prettier + colorful prompt 💅 ---
# --- Colors ---
RED="\[\e[0;31m\]"
GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
MAGENTA="\[\e[0;35m\]"
CYAN="\[\e[0;36m\]"
RESET="\[\e[0m\]"

# --- Git branch ---
parse_git_branch() {
  git branch 2>/dev/null | sed -n '/\* /s///p'
}

# --- Fancy prompt ---
PS1="${BLUE}[\u${YELLOW}@${MAGENTA}\h ${GREEN}\w${CYAN}\$(branch=\$(parse_git_branch); if [ -n \"\$branch\" ]; then echo \" (\$branch)\"; fi)${BLUE}]${RESET}> "

# --- Greeting ---
# Strip out the \[ \] so colors render properly
plain_green="\e[0;32m"
plain_yellow="\e[0;33m"
plain_reset="\e[0m"
echo -e "${plain_green}Welcome back, ${plain_yellow}Ka${plain_reset}! 🌱"

# --- Aliases ---

alias os='~/Desktop/semester-8/IN4000/repo'
alias active='~/Desktop/semester-8/'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias g='git'
alias gs='git status'
alias gss='git status -s'
alias gaa='git add .'
alias gcmsg='git commit -m'
alias gcam='git commit -am'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gp='git push'
alias gpl='git pull'
alias gd='git diff'

export PATH=$PATH:/hom/inf3151/tools/bin
# Fix for bochs libreadline.so.6
export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH
