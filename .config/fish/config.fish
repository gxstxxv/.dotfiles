if status is-interactive
    # bind \cf 'file_search; commandline -f repaint'
    # bind \cd 'current_dir_search; commandline -f repaint'
    # bind \ct 'todo; commandline -f repaint'
    # bind \cv 'parrot; commandline -f repaint'
    # bind \cx 'hacker_news; commandline -f repaint'
    # bind \ca 'play_music; commandline -f repaint'
    bind \cy 'yy; commandline -f repaint'
    bind \cs 'history_search; commandline -f repaint'
    bind \cg 'git_status; commandline -f repaint'
    bind \cn 'quicknotes; commandline -f repaint'

    export EDITOR=nvim

    # --- mactex --- #
    set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin (bash -c 'eval "$(/usr/libexec/path_helper)"; echo $PATH' | tr ':' '\n')

    # --- coursier --- #
    set -gx PATH "$PATH:/Users/gg1/Library/Application Support/Coursier/bin"

    # --- zoxide --- #
    zoxide init fish | source

    set -x PAGER 'col -bx | nvim -c "set laststatus=0 noruler noshowmode" -c "BaleiaColorize" -c "ZenMode" -c "nnoremap q :qa!<CR>" -'
    set -x MANPAGER $PAGER
    set -x SYSTEMD_PAGER $PAGER

    set -x TMP_FISH ~/.config/fish/extras/tmp.fish
    set -x BUF_FISH ~/.config/fish/extras/buf.fish


    if not set -q TMUX
        tmux
    end
end

