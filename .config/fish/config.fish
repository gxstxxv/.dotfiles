if status is-interactive
    bind \cf 'file_search; commandline -f repaint'
    bind \cs 'home_dir_search; commandline -f repaint'
    bind \cd 'current_dir_search; commandline -f repaint'
    bind \cy 'yy; commandline -f repaint'
    bind \cg 'history_search; commandline -f repaint'
    export EDITOR=nvim
set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin (bash -c 'eval "$(/usr/libexec/path_helper)"; echo $PATH' | tr ':' '\n')

#    set -x PATH (bash -c 'eval "$(/usr/libexec/path_helper)"; echo $PATH' | tr ':' '\n')
    # if not set -q TMUX
        # tmux
    # end
end
