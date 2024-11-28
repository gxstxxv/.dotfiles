# searches current directory for files
function file_search
    set input $(fd --type f --exclude '.git' --exclude '.idea' --exclude '.obsidian' --exclude '.fingerprint' --hidden . | fzf --reverse --border --border-label "search" --info=hidden --prompt="" --pointer="-" --color=light --height=50% --preview="bat --color always --style=plain {}" --bind "tab:down,shift-tab:up")
    if [ -n "$input" ]
        nvim $input
    end
end
