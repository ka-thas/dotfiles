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
abbr -a l      'eza --icons'
abbr -a la     'eza -a --icons'
abbr -a ls     'eza -lh --group-directories-first --icons=auto'
abbr -a lsa    'eza -lha --group-directories-first --icons=auto'
abbr -a lt     'eza --tree --level=2 --long --icons --git'
abbr -a lta    'eza --tree --level=2 --long --icons --git -a'
abbr -a r      'rails'
abbr -a vi     'nvim'
abbr -a grep   'rg --color=auto'
abbr -a aliases 'zeditor /home/ka/dotfiles/.config/fish/config.fish'

# ── omarchy abbr (ported from /usr/share/omarchy/default/bash) ───
abbr -a a          'omarchy-agent --inline'
abbr -a c          'opencode --auto'
abbr -a cx         'printf "\e[2J\e[3J\e[H" && claude --permission-mode auto'
abbr -a cy         'codex --approve-for-me'
abbr -a t          'tmux attach || tmux new -s Work'
abbr -a h          'herdr'
abbr -a mup        'MISE_MINIMUM_RELEASE_AGE=0 mise up'
abbr -a decompress 'tar -xzf'

# opencode
fish_add_path $HOME/.opencode/bin
