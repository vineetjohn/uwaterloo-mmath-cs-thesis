#!/usr/bin/env bash

LOGFILE="build/build.log"

pdflatex -shell-escape -output-directory=build/ uw-ethesis &> $LOGFILE && \
bibtex build/uw-ethesis &>> $LOGFILE && \
pdflatex -shell-escape -output-directory=build/ uw-ethesis  &>> $LOGFILE && \
pdflatex -shell-escape -output-directory=build/ uw-ethesis  &>> $LOGFILE
