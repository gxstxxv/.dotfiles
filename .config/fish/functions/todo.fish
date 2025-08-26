function todo
  tmux popup -E "fish -c 'cd ~/Documents/Studium/Semester_4/ && rg -l \"<!-- TODO:\" | fzf --ansi --info=hidden --bind \"J:down,K:up\" > $TMP_FISH'"
  set selected (cat $TMP_FISH)

  if test -z "$selected"
      return
  end

  cd ~/Documents/Studium/Semester_4/
  nvim $selected -c "autocmd VimEnter * ++once :TodoTelescope"
end
