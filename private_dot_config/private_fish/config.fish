if status is-interactive
    alias z="zoxide"
    fzf --fish | source
    . "$HOME/.cargo/env"
    # Commands to run in interactive sessions can go here
end
