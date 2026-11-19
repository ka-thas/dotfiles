function thesis --description 'Claude Remote Control session in ~/master-thesis/repo on kodama, inside tmux'
    # -A attaches to the "thesis" tmux session if it already exists.
    # bash -lc so mise puts claude on PATH.
    ssh -t ka@kodama "tmux new-session -A -s thesis -c ~/master-thesis/repo 'bash -lc \"claude --remote-control thesis\"'"
end
