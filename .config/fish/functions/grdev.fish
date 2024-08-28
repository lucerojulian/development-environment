function grdev --wraps='git reset origin/dev --hard' --description 'alias grdev=git reset origin/dev --hard'
    git reset origin/dev --hard $argv

end
