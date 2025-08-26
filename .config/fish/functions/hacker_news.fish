function hacker_news
  set page_content (curl -s https://news.ycombinator.com/news) 
  set titles (echo $page_content | pcre2grep -o2 '<span class="titleline"><a href="([^"]*)">([^<]*)</a>' | perl -MHTML::Entities -pe 'decode_entities($_)')
  set links (echo $page_content | pcre2grep -o1 '<span class="titleline"><a href="([^"]*)">([^<]*)</a>')

  printf '%s\n' $titles > $TMP_FISH

  while true 

    tmux popup -E -w 85% -h 85% "fish -c 'cat $TMP_FISH | fzf --ansi --info=hidden --bind \"J:down,K:up\" --layout=reverse > $TMP_FISH.1'"

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

    set link $links[$i]

    open -a "Orion" "$link"

    # printf '%s\n' $link > $TMP_FISH.2
    #
    #
    # set page (pandoc -f html -t markdown_strict \
    #               --wrap=none \
    #               --strip-comments \
    #               --reference-links \
    #               "$link" | perl -0777 -pe 's#<([A-Za-z][A-Za-z0-9]*)\b[^>]*?>.*?<\/\1>|<[^>]+?\/>##gs')
    #
    # printf '%s\n' $page > $TMP_FISH.3
    #
    # tmux popup -E -w 85% -h 85% "fish -c 'cat $TMP_FISH.3 | nvim -c \"set filetype=markdown\" -c \"ZenMode\" -c \"nnoremap q :qa!<CR>\" -c \"nnoremap <Leader> :silent! !open -a 'Orion' '$link'<CR>:qa!<CR>\" -'"

  end

end
