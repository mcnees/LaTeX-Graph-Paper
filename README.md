# LaTeX-Graph-Paper
Make your own quadrille, graph, hex, etc. paper! Uses the [PGF/TikZ](https://en.wikipedia.org/wiki/PGF/TikZ) package for LaTeX, which should be part of any modern TeX installation. All colors and spacing are customizable.

Once you clone or download the repo, simply run latex twice on the file "graph paper.tex" to produce a pdf. From the command line, type:
> pdflatex "graph paper.tex"

To change the sort of graph paper produced, just open "graph paper.tex" in your favorite editor and change the token in the line that reads
> \def\usepat{std}

The token "std" produces quadrille paper with ten squares per inch. The tokens for other options (graph, dot grid, hex) are listed just above that line.

Some available styles:

![Standard](/../screenshots/std.jpg "Standard")

![Quad](/../screenshots/quad.jpg "Quadrille")

![Hex](/../screenshots/hex.jpg "Hex")

![Dots](/../screenshots/dot.jpg "Dots")

![Light cone](/../screenshots/lightcone.jpg "Light cone")

![Precocious Engineer](/../screenshots/rosie.jpg "Precocious Engineer color scheme")

![Hex Engineer](/../screenshots/hex engineer.jpg "Hex grid with Engineering Pad color scheme")
