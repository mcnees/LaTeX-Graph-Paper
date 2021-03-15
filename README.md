![Build examples](../../actions/workflows/pdflatex-examples.yml/badge.svg)

[![Latest Zip of PDFs](https://img.shields.io/badge/Latest_Zip_of_PDFs-latest-orange.svg?style=flat)](../gh-action-result/examples/pdfs.zip?raw=true)

# LaTeX-Graph-Paper
Make your own quadrille, graph, hex, etc. paper! Uses the [PGF/TikZ](https://en.wikipedia.org/wiki/PGF/TikZ) package for LaTeX, which should be part of any modern TeX installation. All colors and spacing are customizable.

Once you clone or download the repo, simply run latex twice on the
file "graph paper.tex" to produce a pdf. From the command line, type:

    pdflatex "graph paper.tex"

There are more example .tex files in the [examples
directory](./examples/) to help get you started with customization.
Each tex file has an almost-empty body, with a `\usepackage` statement
that you can customize.  For example,
[engineer-pad.tex](./examples/engineer-pad.tex) looks like this:
```latex
\documentclass{article}
\usepackage[pattern=majmin, colorset=engineer]{graphpaper}
\begin{document}
\thispagestyle{empty}
~
\end{document}
```
(The `~` in the body forces a non-empty body, or else latex wouldn't
generate a PDF).

All the configuration happens via the `\usepackage` command.  The
current valid options are:

* `pattern=<name>`:
Valid pattern names are:
`std,stdeight,majmin,dot,hex,tri,iso,lightcone,ruled,doubleruled`. Default
is `std`.  Patterns come with default page geometry (size and margins;
see `geometry`), and default 'fullness' (whether they fill the page or
not; see options `fullpage` and `textarea`).
* `colorset=<name>`:
Valid color preset names are:
`std,precocious,brickred,engineer,plumpad`.  Default is `std`.  A
preset determines the `majorcolor`, `minorcolor`, and `bgcolor` all at
once.  But, you can start from a preset and then override some colors.
* `majorcolor=<color>`: Override the preset "major" color.  This can
  be a named color, or using the syntax from xcolor to mix colors
  together.
* `minorcolor=<color>`: Override the preset "minor" color.  As above.
* `bgcolor=<color>`: Override the preset background color.  As above.
* `patternsize=<length>`: Override the preset pattern size.  The
  meaning of this length argument is different for each pattern; see
  PDF documentation for full details..
* `dotsize=<length>`: Controls the size of the dots themselves for
  `pattern=dot`.  Default: `.7pt`
* `fullpage`: Make the pattern fill the whole page.
* `textarea`: Make the pattern fill only the text area of the
  document.  At most one of the `fullpage` or `textarea` can be
  specified.  If one is specified, it will override the default
  'fullness' setting of the pattern.
* `geometry={<geometry spec>}`: Page geometry specification, using the
  syntax of the geometry package.  If the geometry package was loaded
  before graphpaper, this option will be ignored.  This specification
  will override the pattern's default page geometry.

For example, let's say you want to use the `tri` pattern, which by
default fills the page.  But you want it to fill just the textarea of
an A4 page with 2cm margins, and you want the triangles to be .75cm long.
Finally, you like the colors of the `engineer` set, but want a white
background.  Then you would write:
```latex
\usepackage[pattern=tri,
  patternsize=0.75cm,
  textarea,
  colorset=engineer,
  bgcolor=white,
  geometry={a4paper, margin=2cm}]{graphpaper}
```

Some example styles:

![Standard](/../screenshots/std.jpg "Standard")

![Quad](/../screenshots/quad.jpg "Quadrille")

![Hex](/../screenshots/hex.jpg "Hex")

![Dots](/../screenshots/dot.jpg "Dots")

![Light cone](/../screenshots/lightcone.jpg "Light cone")

![Precocious Engineer](/../screenshots/rosie.png "Precocious Engineer color scheme")

![Hex Engineer](/../screenshots/hexengineer.png "Hex grid with Engineering Pad color scheme")
