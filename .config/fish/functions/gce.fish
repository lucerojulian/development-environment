function gce --wraps='git rebase --continue' --description 'alias gce=git rebase --continue'
    git rebase --continue $argv

end
