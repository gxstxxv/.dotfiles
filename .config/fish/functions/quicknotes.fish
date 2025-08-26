function quicknotes
  tmux popup -E -w 75% -h 75% "fish -c 'nvim -c \"set laststatus=0 noruler noshowmode\" -c \"ZenMode\" -c \"nnoremap q :q<CR>:wq<CR>\" ~/Documents/Notes/notes.md'"
  
end
