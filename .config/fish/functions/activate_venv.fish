function activate_venv
  set n venv/bin/activate.fish
  test -e $n && source $n || echo "$n does not exist"
end
