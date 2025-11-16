# Move color setting to a separate function that runs only when needed

if status is-interactive
    set fish_greeting
    # Only run starship init if it exists
    type -q starship; and starship init fish | source
end

# Your aliases here
alias pamcan=pacman
alias bar="waybar"
alias hx="helix"
