if status is-interactive
    # Commands to run in interactive sessions can go here
    bind \cf 'file_search; commandline -f repaint'
    bind \cs 'home_dir_search; commandline -f repaint'
    bind \cd 'current_dir_search; commandline -f repaint'
    bind \cy 'yy; commandline -f repaint'
    bind \cg 'history_search; commandline -f repaint'
    export EDITOR=nvim
end
