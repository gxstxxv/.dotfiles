if status is-interactive
    bind \cf 'file_search; commandline -f repaint'
    bind \cd 'current_dir_search; commandline -f repaint'
    bind \cy 'yy; commandline -f repaint'
    bind \cs 'history_search; commandline -f repaint'
    bind \cg 'go_git_repo; commandline -f repaint'
    bind \ct 'go_studium_todo; commandline -f repaint'
    export EDITOR=nvim
    set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin (bash -c 'eval "$(/usr/libexec/path_helper)"; echo $PATH' | tr ':' '\n')

    # >>> coursier install directory >>>
    set -gx PATH "$PATH:/Users/gg1/Library/Application Support/Coursier/bin"
    # <<< coursier install directory <<<

    set -x PAGER 'col -bx | nvim -c "set laststatus=0 noruler noshowmode" -c "BaleiaColorize" -c "ZenMode" -c "nnoremap q :qa!<CR>" -'
    set -x MANPAGER $PAGER
    set -x SYSTEMD_PAGER $PAGER
    set -x TMP_FISH ~/.config/fish/extras/tmp.fish
    set -x BUF_FISH ~/.config/fish/extras/buf.fish

    if not set -q TMUX
        tmux
    end
end

