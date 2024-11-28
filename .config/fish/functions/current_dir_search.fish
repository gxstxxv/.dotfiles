function current_dir_search
    set dir $(pwd)

    if [ $dir = /Users/gg1 ]
        set input $(fd --type d --exclude '.git' --exclude '.obsidian' --exclude '.idea' --exclude '.fingerprint' --hidden --full-path . ~/Desktop ~/Documents ~/Downloads "/Users/gg1/Library/Mobile Documents/iCloud~md~obsidian/Documents/Studium" | fzf --reverse --border --border-label "search" --info=hidden --prompt="" --pointer="-" --color=light --height=50% --bind "tab:down,shift-tab:up")
    else
        set input $(fd --type d --exclude '.git' --exclude '.obsidian' --exclude '.idea' --exclude '.fingerprint' --hidden . | fzf --reverse --border --border-label "search" --info=hidden --prompt="" --pointer="-" --color=light --height=50% --bind "tab:down,shift-tab:up")
    end

    if [ -n "$input" ]
        cd $input
    end
end
