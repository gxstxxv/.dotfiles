function fish_prompt
    set -l dir (prompt_pwd)
    set -l bteal (set_color --bold E8D5C1)
    set -l yellow (set_color --bold FFDC00)
    set -l white (set_color --bold FFFFFF)
    printf "$bteal $dir"
    printf "$yellow  $white"
end
