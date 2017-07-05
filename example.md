```tex
\documentclass[12pt,a4paper]{amsart}
\usepackage[margin=1in]{geometry}
\usepackage[hypertexnames=false]{hyperref}
\usepackage{autonum}
\usepackage{mathrsfs}
\usepackage{filecontents}
\newtheorem{thm}{Theorem}[section]
\title[In line title]{ \large Title}
\author{Author's Name}
\address{Author's Name, Author's Adress}
\email{Author's Email}
\thanks{Author's Thanks Info}
\keywords{}
\subjclass[1991]{}
\date{\today}
\begin{document}
\begin{abstract}
Abstract
\end{abstract}
\maketitle
```

# The first section

## The first subsection

## The second subsection

Some text.

Some in line math $1+1=2.$

Some display math
$$
1+1=2. \mylabel{eq:eq1}
$$
Refer the above equation \eqref{eq:eq1}.
Cite some result \cite{examplekey}.
Some indents:

-   item1
-   item2

\par
A new paragraph! Display a new Theorem

```tex
\begin{thm}\label{thm:thm1}
```

There is the first theorem. 

```tex
\end{thm}
```

```tex
\medskip\begin{proof}
```

There is the proof of Theorem \ref{thm:thm1}.

```tex
\end{proof}
```

# The second section

Enjoy!

```tex
\medskip
\bibliographystyle{alpha}
\bibliography{tempbib}
\begin{filecontents}{tempbib.bib}
```

    @book{examplekey,
      title={Title of the article},
      author={Author's Name of the areticle},
      year={2010},
      publisher={Publisher's info}
    }

```tex
\end{filecontents}
\end{document}
```
