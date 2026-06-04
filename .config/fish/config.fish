if status is-interactive
# Commands to run in interactive sessions can go here
zoxide init fish | source
end
abbr -a d 'docker'
abbr -a ff 'fzf --preview '
abbr -a g 'git'
abbr -a gaa 'git add --all'
abbr -a gcad 'git commit -a --amend'
abbr -a gcam 'git commit -a -m'
abbr -a gcm 'git commit -m'
abbr -a gl 'git pull'
abbr -a gp 'git push'
abbr -a gss 'git status -s'
abbr -a l 'eza --icons'
abbr -a la 'eza -a --icons'
abbr -a ls 'eza --icons'
abbr -a lsa 'ls -a'
abbr -a lt 'eza --tree --level=2 --long --icons --git'
abbr -a lta 'lt -a'
abbr -a r 'rails'
