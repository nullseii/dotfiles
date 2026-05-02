if status is-interactive

# --------------VARIABLES--------------

# neovim (neovide?), btw
set -gx EDITOR "nvim"

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

# safety first!!
abbr --add cp "cp -i"

# calculator
abbr --add calc "qalc"

# matrix
abbr --add matrix "unimatrix -c blue"

# bottom task manager
abbr --add btm "btm --process-memory-as-value"
# updating all my programs
abbr --add upd "update"

# backups
abbr --add save "~/scripts/backup.sh"
abbr --add SAVE "~/scripts/backup.sh"
abbr --add usbsave "~/scripts/usb-backup.sh"
abbr --add USBSAVE "~/scripts/usb-backup.sh"

# restic
abbr --add restic "restic -r /Users/Shared/Backups/restic-backup/"
# cbonsai
abbr --add cbonsai "cbonsai -S -L 40 -t 0.1 -m 'hello, ralsei :)'"
abbr --add cbonsainm "cbonsai -S -L 40 -t 0.1"

# some folders
abbr --add prj "z ~/Documents/programming"
abbr --add dwn "z ~/Downloads/"
abbr --add dot "z ~/.dotfiles"

# other stuff

abbr --add vim "$EDITOR"
abbr --add vi "$EDITOR"
abbr --add nvim "$EDITOR"
export EDITOR "$EDITOR"
export VISUAL "$EDITOR"
abbr --add ls "lsd"
abbr --add tree "lsd --tree"

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
abbr --add mooc "z /Users/ralsei/Library/Application\ Support/tmc/vscode/mooc-java-programming-ii/"

# break btop habit, btm is in rust btw (just like fish!)
abbr --add btop "btm"
abbr --add top "btm"
abbr --add htop "btm"

# need thefuck to work, needs an alias
thefuck --alias fk| source
#abbr --add fk "fuck"

# fetch
abbr --add ftch "fastfetch"

# clock
abbr --add tty-clock "tty-clock -tSsnbC 5"

# updating
abbr --add update "rustup update && pipx upgrade-all && pip install --upgrade pip && spicetify upgrade &&
brew doctor && brew update && brew upgrade && brew cleanup && brew doctor"

# lazybones! = save && update
abbr --add lazybones "~/scripts/backup.sh &&
rustup update && pip-review --auto && pipx upgrade-all && pip install --upgrade pip && spicetify upgrade &&
brew doctor && brew update && brew upgrade && brew cleanup && brew doctor"

# --------------APPLICATIONS--------------

# init homebrew ENV variables
brew shellenv | source
# startup zoxide
zoxide init fish | source
# make pipx work with fish
set -gx PATH $PATH /Users/ralsei/.local/bin
# starship prompt
starship init fish | source

# --------------THEMING AND CONFIGURATIONS--------------

# catppuccin for fish
fish_config theme choose "Catppuccin Mocha"

# I use vim, btw (said it twice)
set -g fish_key_bindings fish_vi_key_bindings
# --------------BUG FIXES--------------

# fix GPG not getting tty input
set -gx GPG_TTY "$(tty)"
set -gx HOME "/Users/ralsei"
end

fish_add_path /Users/ralsei/.spicetify
