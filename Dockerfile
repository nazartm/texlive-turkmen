FROM debian:buster

RUN apt-get update -y \
    && apt-get install -y \
    texlive texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-lang-other

# RUN apt-get install texlive-fonts-extra    
# RUN apt-get install -y texlive-generic-extra texlive-latex-extra

# Uncomment below if you need cyrillic or xelatex
# RUN apt-get install -y texlive-lang-cyrillic texlive-xetex

COPY babel-turkmen /usr/share/texlive/texmf-dist/tex/generic/babel-turkmen

RUN cd /usr/share/texlive/texmf-dist/tex/generic/babel-turkmen \
    && tex turkmen.ins

RUN mktexlsr && fmtutil --all -sys

CMD ["pdflatex"]
