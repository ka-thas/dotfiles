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
abbr -a kodama       'ssh ka@kodama'
abbr -a blitzen      'ssh blitzen'
abbr -a ifi          'ssh ifi'
abbr -a uio          'ssh -fN uio'
abbr -a fox          'ssh -fN fox'
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
abbr -a ..        'cd ..'
abbr -a ...       'cd ../..'
abbr -a ....      'cd ../../..'
abbr -a ls        'eza --icons'
abbr -a l         'eza --icons'
abbr -a la        'eza -a --icons'
abbr -a cd        'z'
abbr -a grep      'rg --color=auto'
abbr -a aliases   'zed ~/.config/fish/config.fish'
abbr -a a         'claude'

# opencode
fish_add_path $HOME/.opencode/bin

# ── git prompt ────────────────────────────────────────────────
# (main ↑1↓2 +1*2%3): ↑ ahead, ↓ behind, + staged, * changed, % untracked
set -g __fish_git_prompt_show_informative_status yes
set -g __fish_git_prompt_showuntrackedfiles yes
set -g __fish_git_prompt_showupstream informative
set -g __fish_git_prompt_char_stateseparator ' '
set -g __fish_git_prompt_char_stagedstate '+'
set -g __fish_git_prompt_char_dirtystate '*'
set -g __fish_git_prompt_char_untrackedfiles '%'
set -g __fish_git_prompt_char_invalidstate '!'
set -g __fish_git_prompt_char_cleanstate ''
set -g __fish_git_prompt_char_upstream_ahead '↑'
set -g __fish_git_prompt_char_upstream_behind '↓'
set -g __fish_git_prompt_char_upstream_prefix ''

# ── theme ─────────────────────────────────────────────────────
fish_config theme choose ayu-contrast
