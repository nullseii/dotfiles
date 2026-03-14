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

# calculator
abbr --add calc "qalc"

# matrix
abbr --add matrix "unimatrix -c blue"

# bottom task manager
abbr --add btm "btm --process-memory-as-value"
# updating all my programs
abbr --add upd "update"

# cbonsai
abbr --add cbonsai "cbonsai -S -L 40 -t 0.1 -m 'hello, evand :)'"
abbr --add cbonsainm "cbonsai -S -L 40 -t 0.1"

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

# sends file to macos trash
abbr --add rm "trash"

# homebrew
abbr --add bw "brew"
abbr --add bup "brew doctor && brew update && brew upgrade && brew cleanup && brew doctor"

# mooc course
abbr --add mooc "z /Users/evand/Library/Application Support/tmc/vscode/mooc-java-programming-ii"

# break btop habit, btm is in rust btw (just like fish!)
abbr --add btop "btm"
abbr --add top "btm"
abbr --add htop "btm"

# need thefuck to work, needs an alias
thefuck --alias fk| source
#abbr --add fk "fuck"

# fetch
abbr --add ftch "fastfetch"

# updating
abbr --add update "rustup update && pip-review --auto && pipx upgrade-all && pip install --upgrade pip && spicetify upgrade &&
brew doctor && brew update && brew upgrade && brew cleanup && brew doctor"
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

fish_add_path /Users/evand/.spicetify
