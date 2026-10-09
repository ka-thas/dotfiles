function compress --description 'Make <dir>.tar.gz from a dir or file'
    set -l target (string trim --right --chars=/ -- $argv[1])
    tar -czf $target.tar.gz $target
end
