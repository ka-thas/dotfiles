function ff --description 'Fuzzy-find a file with a bat preview'
    fzf --preview 'bat --style=numbers --color=always {}' $argv
end
