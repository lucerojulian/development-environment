function fishconfig --wraps='cd ~/.config/fish && nvim' --description 'alias fishconfig=cd ~/.config/fish && nvim'
  cd ~/.config/fish && nvim $argv
        
end
