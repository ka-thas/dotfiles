function n --description 'nvim, opening the current dir when given no args'
    if test (count $argv) -eq 0
        command nvim .
    else
        command nvim $argv
    end
end
