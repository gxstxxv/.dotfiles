function pdfmake
  pandoc $argv[1] -o $argv[2] -V geometry:margin=1in -H ~/.config/pandoc/header.tex
end

