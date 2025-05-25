function file_search
    tmux popup -E "fish -c 'fd --type f --exclude '.git' --exclude '.idea' --exclude '.obsidian' --exclude '.fingerprint' --hidden . | fzf --ansi --info=hidden --preview=\"bat --color always --style=plain {}\" --bind \"J:down,K:up\" > $TMP_FISH'"
    set input $(cat $TMP_FISH)
    if [ -n "$input" ]
        nvim $input
    end
end
