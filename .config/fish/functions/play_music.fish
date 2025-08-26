function play_music

  set songs (fd --extension mp3 --max-depth 1 . ~/Documents/Music/*/)
  set titles 

  for song in $songs
    set title (basename (dirname $song) | sed 's/ Project//')
    set titles $titles $title
  end

  printf '%s\n' $titles > $TMP_FISH

  while true
    tmux popup -E "fish -c 'cat $TMP_FISH | fzf --ansi --info=hidden --bind \"J:down,K:up\" > $TMP_FISH.1'"

    set selected (cat $TMP_FISH.1)

    if test -z "$selected"
        return
    end

    set i 1
    for title in $titles
        if test "$title" = "$selected"
            break
        end
        set i (math $i + 1)
    end

    set song $songs[$i]
    printf '%s\n' $song > $TMP_FISH.2

    tmux popup -E "fish -c 'afplay (cat $TMP_FISH.2) & ; bash ~/Documents/Code/Bash/Projekte/rain.sh'"
  end
    
end
