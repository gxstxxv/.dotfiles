function git_status
    set start_path (pwd)
    set repo_paths (fd --type d --hidden --follow --no-ignore --exclude Library --exclude .local --exclude .config --exclude .dotfiles/.config --exclude Documents/Code/Swift/ --exclude .Trash '^\.git$' ~)

    set repo_names
    set repo_statuses
    set dirty_repos

    for path in $repo_paths
        set repo_name (basename (dirname $path))
        set repo_names $repo_names $repo_name

        set repo_dir (string replace -r '/\.git/?$' '/' $path)
        set git_status (cd $repo_dir && git status --porcelain)

        if test -z "$git_status"
            set repo_statuses $repo_statuses "$repo_name"
        else
            set yellow (set_color --bold FFDC00)
            set normal (set_color normal)
            set repo_statuses $repo_statuses "$yellow$repo_name$normal"
            set dirty_repos $dirty_repos "$yellow$repo_name$normal"
        end
    end

    printf '%s\n' $repo_statuses > $TMP_FISH
    printf '%s\n' $dirty_repos > $TMP_FISH.1

    tmux popup -E "fish -c 'cat $TMP_FISH | fzf --ansi --info=hidden --bind \"J:down,K:up,tab:reload(cat $TMP_FISH.1),shift-tab:reload(cat $TMP_FISH)\" > $TMP_FISH.2'"

    set selected (cat $TMP_FISH.2)
    if test -z "$selected"
        cd $start_path
        return
    end

    set selected_repo (echo $selected | string replace -r ' \[.*\]$' '')

    set i 1
    for name in $repo_names
        if test "$name" = "$selected_repo"
            break
        end
        set i (math $i + 1)
    end

    set repo $repo_paths[$i]
    set repo (string replace -r '/\.git/?$' '/' $repo)

    cd $repo
    lazygit
end
