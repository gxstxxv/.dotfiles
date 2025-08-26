function file_search
    tmux popup -E -d $(pwd) "fish -c 'fd --type f --exclude '.git' --exclude '.idea' --exclude '.obsidian' --exclude '.fingerprint' --hidden . | fzf --ansi --info=hidden --preview=\"bat --color always --style=plain {}\" --bind \"J:down,K:up\" > $TMP_FISH'"
    set input $(cat $TMP_FISH)
    if test -n "$input"
        nvim $input
    end
end
