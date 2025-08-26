function mensa 
  set yellow (set_color --bold FFDC00)
  set normal (set_color normal)

  set headings "Vorspeisen" "Salate" "Suppen" "Essen" "Beilagen" "Desserts"

  set vorspeisen
  set salate
  set suppen
  set essen
  set beilagen
  set desserts

  set page_content (curl -s https://www.stw.berlin/mensen/einrichtungen/hochschule-f%C3%BCr-technik-und-wirtschaft-berlin/mensa-htw-wilhelminenhof.html) 

  set raw (echo $page_content | perl -nle 'print for /<span\s+class="bold">\K(.*?)(?=<\/span>)|<div class="col-md-12 splGroup">\K(.*?)(?=<\/div>)/g' | grep -v '^$')

  for line in (printf '%s\n' $raw)
    if contains -- $line $headings
      set current_heading $line
    else 
      switch $current_heading
        case "Vorspeisen"
          set vorspeisen $vorspeisen "$line"
        case "Salate"
          set salate $salate "$line"
        case "Suppen"
          set suppen $suppen "$line"
        case "Essen"
          set essen $essen "$yellow$line$normal"
        case "Beilagen"
          set beilagen $beilagen "$line"
        case "Desserts"
          set desserts $desserts "$line"
      end
    end
  end

  printf '%s\n' $vorspeisen > $TMP_FISH
  printf '%s\n' $salate >> $TMP_FISH
  printf '%s\n' $suppen >> $TMP_FISH
  printf '%s\n' $essen >> $TMP_FISH
  printf '%s\n' $beilagen >> $TMP_FISH
  printf '%s\n' $desserts >> $TMP_FISH

  tmux popup -E -w 60% -h 60% "fish -c 'cat $TMP_FISH | fzf --ansi --info=hidden --bind \"J:down,K:up\" --layout=reverse'"
   
end
