function update
    rustup update && pip-review --auto && pipx upgrade-all && spicetify upgrade &&
    brew doctor && brew update && brew upgrade && brew cleanup && brew doctor
end
