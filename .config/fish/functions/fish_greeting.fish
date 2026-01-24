function fish_greeting
    #    if not set -q fish_greeting
    #    set -l line1 (_ 'Welcome to fish, the friendly interactive shell')
    #    set -l line2 \n(printf (_ 'Type %shelp%s for instructions on how to use fish') (set_color green) (set_color normal))
    #    set -g fish_greeting "$line1$line2"
    #end

    set -l cows ~/.config/fish

    if test "$(whoami)" = "root"
        cowsay -e "0" -f "$cows/shark.cow" "You are filled with DETERMINATION. This grants ROOT access." |
        lolcat -f
    else
        cowsay -e "^" -f "$cows/fish.cow" "You're blue now." | lolcat -f
    end
    if set -q fish_private_mode
        set -l line (_ "fish is running in private mode, history will not be persisted.")
        if set -q fish_greeting[1]
            set -g fish_greeting $fish_greeting\n$line
        else
            set -g fish_greeting $line
        end
    end
 
    # The greeting used to be skipped when fish_greeting was empty (not just undefined)
    # Keep it that way to not print superfluous newlines on old configuration
    test -n "$fish_greeting"
    and echo $fish_greeting
end
