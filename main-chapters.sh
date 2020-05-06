#pdflatex -jobname=thechap01 "\includeonly{chap01}\input{maintex}"

#pdflatex -jobname=chap01 -output-directory=out "\includeonly{Chapter1/chapter1}\input{thesis}"

mkdir out/

# compile individual chapters
pdflatex -synctex=1 -interaction=nonstopmode "\def\ischapterone{1} \input{thesis.tex}";   mv thesis.pdf out/chap01.pdf
pdflatex -synctex=1 -interaction=nonstopmode "\def\ischaptertwo{1} \input{thesis.tex}";   mv thesis.pdf out/chap02.pdf
pdflatex -synctex=1 -interaction=nonstopmode "\def\ischapterthree{1} \input{thesis.tex}"; mv thesis.pdf out/chap03.pdf
pdflatex -synctex=1 -interaction=nonstopmode "\def\isappendixone{1} \input{thesis.tex}";  mv thesis.pdf out/appendix1.pdf
pdflatex -synctex=1 -interaction=nonstopmode "\def\isappendixtwo{1} \input{thesis.tex}";  mv thesis.pdf out/appendix2.pdf
pdflatex -synctex=1 -interaction=nonstopmode "\def\isabstract{1} \input{thesis.tex}";     mv thesis.pdf out/abstract.pdf
pdflatex -synctex=1 -interaction=nonstopmode "\def\isreferences{1} \input{thesis.tex}";   mv thesis.pdf out/references.pdf