function history_search
    tmux popup -E "fish -c 'history | fzf --ansi --info=hidden --bind \"J:down,K:up\" > $TMP_FISH'"
    commandline --insert $(cat $TMP_FISH)
end
