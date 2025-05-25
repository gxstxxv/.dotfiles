function home_dir_search
    tmux popup -E "fish -c 'fd --type d --exclude '.git' --exclude '.idea' --exclude '.fingerprint' --full-path --hidden . ~/ | fzf --ansi --info=hidden --bind \"J:down,K:up\" > $TMP_FISH'"
    set input $(cat $TMP_FISH)
    if [ -n "$input" ]
        cd $input
    end
end
