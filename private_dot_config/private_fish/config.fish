if status is-interactive
    # rustup shell setup
    set -x PATH "$HOME/.cargo/bin" $PATH

    #claude shell setup
    set -x PATH "$HOME/.npm-global/bin" $PATH

    #misc bin
    set -x PATH "$HOME/.local/bin" $PATH

    zoxide init fish | source
    fzf --fish | source
    starship init fish | source

    #carapace
    set -Ux CARAPACE_BRIDGES 'zsh,fish,bash' # optional
    carapace _carapace | source

    alias cz="chezmoi"
    alias cg="cd /home/sgreeley/.local/share/chezmoi"
    alias top="btm"
    alias f='fzf --preview '\''bat --color=always --style=numbers --line-range=:500 {}'\'
    alias fe='fd --type f --hidden --exclude .git | fzf | xargs nvim'
    alias df="dysk"
end
