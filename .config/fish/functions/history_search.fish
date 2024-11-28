function history_search
    commandline --insert $(history | fzf --reverse --border --border-label "search" --info=hidden --prompt="" --pointer="-" --color=light --height=50% --bind "tab:down,shift-tab:up")
end
