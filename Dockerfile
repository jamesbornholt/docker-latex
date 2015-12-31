FROM debian:jessie
MAINTAINER James Bornholt "bornholt@cs.washington.edu"

RUN apt-get update \
  && apt-get install -y \
    git \
    fontconfig \
    make \
    python3 \
    texlive-latex-extra \
    texlive-math-extra \
    texlive-fonts-extra \
    texlive-science \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

CMD bash
