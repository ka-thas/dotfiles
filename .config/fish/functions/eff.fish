function eff --description 'Open a fuzzy-found file in $EDITOR'
    set -l file (ff); or return
    $EDITOR $file
end
