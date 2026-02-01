if status is-interactive

# --------------SHELL ABBREVIATIONS--------------

# I use jujutsu, not git
abbr --add jst "jj st"
abbr --add jgp "jj git push"
abbr --add jrb "jj rebase -r ? -o ?"
abbr --add jnb "jj bookmark create"
abbr --add jgr "jj git remote add"
abbr --add jgf "jj git fetch"
abbr --add jlg "jj log"
abbr --add jnw "jj new"


abbr --add upd "update"

# some folders
abbr --add prj "z ~/Documents/programming"
abbr --add dwn "z ~/Downloads/"
abbr --add dot "z ~/.dotfiles"

# other stuff

abbr --add vim "nvim"
abbr --add vi "nvim"
abbr --add ls "eza"
abbr --add tree "eza -T"

# zoxide
abbr --add cd "z"

# bat>cat
abbr --add cat "bat"

# doas I say, not as I do.
abbr --add sudo "doas"

# reminds me that trash-cli exists
abbr --add rm "trash-put"

# homebrew
abbr --add bw "brew"
abbr --add bup "brew doctor && brew update && brew upgrade && brew cleanup && brew doctor"

# mooc course
abbr --add mooc "z /Users/evand/Library/Application Support/tmc/vscode/mooc-java-programming-i"

# break btop habit, btm is in rust btw (just like fish!)
abbr --add btop "btm"
abbr --add top "btm"
abbr --add htop "btm"

# need thefuck to work, needs an alias
thefuck --alias fk| source
#abbr --add fk "fuck"

# --------------APPLICATIONS--------------

# init homebrew ENV variables
brew shellenv | source
# startup zoxide
zoxide init fish | source
# make pipx work with fish
set -gx PATH $PATH /Users/evand/.local/bin

# --------------THEMING AND CONFIGURATIONS--------------

# catppuccin for fish
fish_config theme choose "Catppuccin Mocha"

# neovim, btw
set -gx EDITOR nvim

# I use vim, btw (said it twice)
set -g fish_key_bindings fish_vi_key_bindings
# --------------BUG FIXES--------------

# fix GPG not getting tty input
set -gx GPG_TTY "$(tty)"

end
