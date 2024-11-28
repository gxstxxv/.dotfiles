function home_dir_search
    set input $(fd --type d --exclude '.git' --exclude '.idea' --exclude '.fingerprint' --full-path --hidden . ~/ | fzf --reverse --border --border-label "search" --info=hidden --prompt="" --pointer="-" --color=light --height=50% --bind "tab:down,shift-tab:up")
    if [ -n "$input" ]
        cd $input
    end
end
