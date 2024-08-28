## WSL installation

Install WSL, using version **2**

```bash
wsl --set-default version 2
wsl --install Ubuntu-22.04
```

Once WSL is installed and configured, we will start using commands within Ubuntu

## Update ubuntu packages

```bash
sudo apt-get update
sudo apt-get upgrade
```

## Homebrew package manage installation

[_Homebrew web_](https://brew.sh)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```bash
# Use the following command to add Homebrew to the path
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Homebrew's dependencies if you have sudo access
sudo apt-get install build-essential

# We recommend that you install GCC:
brew install gcc
```

## Fish shell installation

[_Fish shell web_](https://fishshell.com)

```bash
# Only choose one option
# To get the latest version use Homebrew

brew install fish

# To get the latest version within the ubuntu repositories

sudo apt install fish
```

**Set fish as default shell**

**Check the fish path (In the examples below it was located at: /home/linuxbrew/.linuxbrew/bin/fish)**

```bash
which fish
```

**Add fish to the know shells (Replace FISH_PATH with your fish path)**
Example path: `/home/linuxbrew/.linuxbrew/bin/fish`

```bash
# After this command restart WSL terminal.

sudo sh -c 'echo FISH_PATH >> /etc/shells'
```

**Set fish as the default shell**

```bash
# After this command restart WSL terminal.
chsh -s FISH_PATH
```

If fish has been installed correctly when you reopen WSL you will see a message like this

```bash
Welcome to fish, the friendly interactive shell
Type help for instructions on how to use fish
```

**Add brew binaries in fish path (use the fish path but remove the fish subfolder from the path in my case it would be this)**

```bash
fish_add_path /home/linuxbrew/.linuxbrew/bin
```

**Fisher plugin manager** ([_Fisher repository_](https://github.com/jorgebucaran/fisher))

```bash
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

You can create aliases to shorten commands, for example I like to shorten git commands

```bash
alias --save ALIAS_NAME="git checkout main"
alias --save myProject="cd ~/Documents/Projects/Project1"

# To use them just call them by their name
ALIAS_NAME #Execute "git checkout main"
myProject #Go to Project1 folder
```

## Zellij installation

[_Zellij web_](https://zellij.dev)

```bash
brew install zellij
```

If you want to always start with zellij open fish config file

```bash
nano ~/.config/fish/config.fish
```

We add the following line and the file would look like this

```bash
# line to add in config.fish
 eval "$(zellij setup --generate-auto-start fish)"
```

```bash
# config.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(zellij setup --generate-auto-start fish)"
end
```

Save and restart WSL terminal and next time you start WSL it will start with Zellij and Fish

## Nvim and LazyVim installation

```bash
brew install nvim
```

**Install LazyVim** ([_LazyVim installation_](https://www.lazyvim.org/installation))

Verify and fix plugin dependencies (To verify errors, use :LazyHealth) and install nodejs

```bash
brew install ripgrep
brew install luarocks
brew install fd
brew install lazygit
brew install node@20 # @version
```

```bash
# verifies the right Node.js version is in the environment
node -v # should print `v20.17.0`

# verifies the right npm version is in the environment
npm -v # should print `10.8.2`
```

## Continue with customization:

- Copy .config folder

if you have a vs-code-json-language-server warning run this command

```
sudo ln -s /home/julian/.nvm/versions/node/v20.17.0/bin/node /usr/bin/node
```
