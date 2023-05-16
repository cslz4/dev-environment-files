# brew install fish ​
# fish
# fish_add_path /opt/homebrew/bin
# echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
# chsh -s /opt/homebrew/bin/fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim="nvim"
alias fishc="vim ~/.config/fish/config.fish"
alias fishs="source ~/.config/fish/config.fish"
alias ls="exa"
alias theme="vim ~/.config/starship.toml"
alias nvim_paste="$HOME/bin/nvim_paste.sh"
echo 'export PATH="$PATH:$HOME/bin"' >>~/.bashrc
export PATH="$PATH:/mnt/c/Program Files/win32yank-x64/win32yank.exe"
starship init fish | source
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

eval $(ssh-agent -c)
