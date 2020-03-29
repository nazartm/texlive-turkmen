Texlive Turkmen
===============

Docker image for typesetting with latex in turkmen.

Build
-----

    $ docker build -t texlive .

Usage:
------

    $ docker run -it -v "$(pwd)":/usr/src/book -w /usr/src/book texlive pdflatex book.tex

Or when using xelatex:

    $ docker run -it -v "$(pwd)":/usr/src/book -w /usr/src/book texlive xelatex book.tex

