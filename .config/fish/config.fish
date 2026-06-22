# ~/.config/fish/config.fish

zoxide init fish | source

# ── path ──────────────────────────────────────────────────────
fish_add_path /usr/local/bin
fish_add_path /usr/local/sbin
fish_add_path $HOME/.cargo/bin
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.local/bin

# ── misc ──────────────────────────────────────────────────────
set -x SDKROOT (xcrun --sdk macosx --show-sdk-path)
zoxide init fish --cmd cd | source

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
abbr -a gcam 'git commit -am'
abbr -a gp   'git push'
abbr -a gpf  'git push --force-with-lease'
abbr -a gs   'git status'
abbr -a gss  'git status --short'


# ── local abbr ────────────────────────────────────────────────
abbr -a ..     'cd ..'
abbr -a ...    'cd ../..'
abbr -a ....   'cd ../../..'
abbr -a ls     'eza --icons'
abbr -a l      'eza --icons'
abbr -a la     'eza -a --icons'
abbr -a cd     'z'
abbr -a active 'cd ~/Documents/Semester-8/'
abbr -a os     'cd ~/Documents/Semester-8/IN4000/repo/'
abbr -a grl    'cd ~/Documents/IN1160-V26/'
abbr -a vi     'nvim'
abbr -a grep   'rg --color=auto'
# opencode
fish_add_path $HOME/.opencode/bin
