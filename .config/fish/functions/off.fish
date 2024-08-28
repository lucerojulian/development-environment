function off --wraps='wsl.exe --terminate Ubuntu-22.04' --description 'alias off=wsl.exe --terminate Ubuntu-22.04'
    wsl.exe --terminate Ubuntu-22.04 $argv

end
