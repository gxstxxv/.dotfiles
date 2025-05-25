function current_dir_search
    set dir $(pwd)

    if [ $dir = /Users/gg1 ]
        tmux popup -E "fish -c 'fd --type d --exclude '.git' --exclude '.obsidian' --exclude '.idea' --exclude '.fingerprint' --hidden --full-path . ~/Desktop ~/Documents ~/Downloads | fzf --ansi --info=hidden --bind \"J:down,K:up\" > $TMP_FISH'"
        set input $(cat $TMP_FISH)
    else
        tmux popup -E "fish -c 'fd --type d --exclude '.git' --exclude '.obsidian' --exclude '.idea' --exclude '.fingerprint' --hidden . | fzf --ansi --info=hidden --bind \"J:down,K:up\" > $TMP_FISH'"
        set input $(cat $TMP_FISH)
    end

    if [ -n "$input" ]
        cd $input
    end
end
