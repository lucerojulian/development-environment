function zellijconfig --wraps='cd ~/.config/zellij && nvim' --description 'alias zellijconfig=cd ~/.config/zellij && nvim'
  cd ~/.config/zellij && nvim $argv
        
end
