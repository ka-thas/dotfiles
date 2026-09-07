if status is-interactive
# Commands to run in interactive sessions can go here
fish_add_path ~/.local/bin
fish_add_path $HOME/.cargo/bin
zoxide init fish --cmd cd | source
end

# ── ssh abbr ──────────────────────────────────────────────────
abbr -a ifi          'ssh ifi'
abbr -a uio          'ssh uio'
abbr -a ifi-adenin   'ssh adenin'
abbr -a ifi-sytosin  'ssh sytosin'
abbr -a ifi-guanin   'ssh guanin'
abbr -a ifi-tymin    'ssh tymin'
abbr -a ifi-gimli    'ssh gimli'
abbr -a ifi-galadriel 'ssh galadriel'
abbr -a ifi-cupid    'ssh cupid'
abbr -a robin-hpc    'ssh kavint@hpc.robin.uiocloud.no'

# ── git abbr ──────────────────────────────────────────────────
abbr -a g    'git'
abbr -a ga   'git add'
abbr -a gaa  'git add --all'
abbr -a gb   'git branch'
abbr -a gc   'git commit'
abbr -a gcad 'git commit -a --amend'
abbr -a gcam 'git commit -am'
abbr -a gcm  'git commit -m'
abbr -a gl   'git pull'
abbr -a gp   'git push'
abbr -a gpf  'git push --force-with-lease'
abbr -a gs   'git status'
abbr -a gss  'git status --short'

# ── local abbr ────────────────────────────────────────────────
abbr -a ..     'cd ..'
abbr -a ...    'cd ../..'
abbr -a ....   'cd ../../..'
abbr -a d      'docker'
abbr -a ff     'fzf --preview '
abbr -a l      'eza --icons'
abbr -a la     'eza -a --icons'
abbr -a ls     'eza --icons'
abbr -a lsa    'ls -a'
abbr -a lt     'eza --tree --level=2 --long --icons --git'
abbr -a lta    'lt -a'
abbr -a r      'rails'
abbr -a vi     'nvim'
abbr -a grep   'rg --color=auto'

# opencode
fish_add_path $HOME/.opencode/bin
