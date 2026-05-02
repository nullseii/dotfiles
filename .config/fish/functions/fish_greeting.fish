function fish_greeting
    #    if not set -q fish_greeting
    set -l line1 (_ 'Welcome to fish, the friendly interactive shell')
    #    set -l line2 \n(printf (_ 'Type %shelp%s for instructions on how to use fish') (set_color green) (set_color normal))
    set -g fish_greeting "$line1$line2"
    #end
    set -l cows ~/.config/fish

    # The greeting used to be skipped when fish_greeting was empty (not just undefined)
    # Keep it that way to not print superfluous newlines on old configuration
    test -n "$fish_greeting"
    # check if tmux or ghostty, if its neovim we give a different greeting
    #if test "$TERM" = "tmux-256color"; or test "$TERM" = "xterm-ghostty"
    if test "$TERM" = "xterm-ghostty"
        #        if test "$(whoami)" = "root"
        #    cowsay -e "0" -f "$cows/shark.cow" "ROOT access granted. Be careful!" |
        #    lolcat -f
        #else
        #    cowsay -e "^" -f "$cows/fish.cow" "$fish_greeting" | lolcat -f
        #end

        abbr --add fastfetch fastfetch --config ~/.config/fastfetch/image.jsonc --bright-color false
        abbr --add ftch fastfetch --config ~/.config/fastfetch/image.jsonc --bright-color false
        clear && fastfetch --config ~/.config/fastfetch/image.jsonc --bright-color false
        # else if test "$TERM" = "tmux-256color"
    else if test "$TERM" = "tmux-256color"
        set -l parameters "--kitty-icat ~/Downloads/images/profile-pics/clover.jpeg --logo-width 28 --logo-height 12 --bright-color false"
        set -l command "fastfetch $parameters"
        abbr --add fastfetch "$command"
        abbr --add ftch "$command"
        fastfetch --kitty-icat ~/Downloads/images/profile-pics/clover.jpeg --logo-width 28 --logo-height 12 --bright-color false
    else
        #         if test "$(whoami)" = "root"
        #     cowsay -e "0" -f "$cows/shark.cow" "ROOT access granted. Be careful!" |
        #     lolcat -f
        # else
        #     cowsay -e "^" -f "$cows/fish.cow" "$fish_greeting" | lolcat -f
        # end
        # abbr --add ftch fastfetch --kitty-icat ~/Downloads/images/profile-pics/sans.png --logo-width 28 --logo-height 12
        # abbr --add fastfetch fastfetch --kitty-icat ~/Downloads/images/profile-pics/sans.png --logo-width 28 --logo-height 12
        # fastfetch --kitty-icat ~/Downloads/images/profile-pics/sans.png --logo-width 28 --logo-height 12
        abbr --add ftch fastfetch --bright-color false
        abbr --add fastfetch fastfetch --bright-color false
        fastfetch --bright-color false
        # else
        # nvim terminal
        # figlet -f slant "terminal" | lolcat -f
    end

    if set -q fish_private_mode
        set -l line (_ "fish is running in private mode, history will not be persisted.")
        if set -q fish_greeting[1]
            set -g fish_greeting $fish_greeting\n$line
        else
            set -g fish_greeting $line
        end
    end


    #    and echo $fish_greeting | lolcat -f
end
