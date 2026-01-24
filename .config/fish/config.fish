if status is-interactive
# Commands to run in interactive sessions can go here
zoxide init fish | source
# why doesnt this work I dont know
set fish_transient_prompt 1
# neovim, btw
set -gx EDITOR nvim
# pipx
set PATH $PATH /Users/evand/.local/bin
# catppuccin, btw
fish_config theme choose "Catppuccin Mocha"
# homebrew fix
brew shellenv | source
# GPG tty fix
set -gx GPG_TTY "$(tty)"
end
