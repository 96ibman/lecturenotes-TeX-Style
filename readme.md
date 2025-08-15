# LectureNotes LaTeX Class

`lecturenotes.cls` is a custom LaTeX class for producing clean, well-structured lecture notes with built-in support for mathematics, algorithms, code listings, and hyperlinks.  
It preloads a set of packages and defines custom macros to streamline writing academic and technical content.

## Features
- **Clean paragraph formatting** with `parskip`
- **Math and semantics support** via `amsmath`, `amssymb`, `mathrsfs`, `stmaryrd`, `mathpartir`, and `semantic`
- **Algorithms** with `algorithm`, `algorithmicx`, and `algpseudocode`
- **Code listings** styled with `tcolorbox` and `listingsutf8`
- **Highlighting and notes** with `xcolor`, `soul`, and `tcolorbox`
- **Hyperlinks and references** with `hyperref` and `natbib`
- Custom macros:
  - `\definition` for numbered definitions
  - `\refterm` / `\linkterm` for linking terms
  - `\set`, `\sint` for notation
  - `\minititle` for unnumbered subheadings
  - `\commandnote` for styled note boxes
  - `\hltext` for inline highlights
  - `\inlinecode` and `codeblock` for code

## Usage
1. Place `lecturenotes.cls` in your working directory.
2. In your `.tex` document:
   ```latex
   \documentclass{lecturenotes}
   \title{Lecture Notes Example}
   \author{Your Name}
   \date{\today}
   \begin{document}
   \maketitle
   \tableofcontents
   \end{document}
   ```
3. See `main.tex` for a full usage demonstration including:

## Dependencies
All dependencies are standard CTAN packages:  
`graphicx`, `booktabs`, `parskip`, `float`, `geometry`, `array`, `multicol`, `titling`,  
`amsmath`, `amssymb`, `mathrsfs`, `stmaryrd`, `mathpartir`, `semantic`,  
`tcolorbox`, `listingsutf8`, `algorithm`, `algorithmicx`, `algpseudocode`,  
`xcolor`, `soul`, `enumitem`, `gensymb`,  
`natbib`, `hyperref`.

## License
This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
