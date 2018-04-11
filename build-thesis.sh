#!/usr/bin/env bash

LOGFILE="build/build.log"

pdflatex -halt-on-error -shell-escape -output-directory=build/ uw-ethesis &> $LOGFILE && \
bibtex build/uw-ethesis &>> $LOGFILE && \
makeglossaries build/uw-ethesis &>> $LOGFILE && \
pdflatex -halt-on-error -shell-escape -output-directory=build/ uw-ethesis  &>> $LOGFILE && \
pdflatex -halt-on-error -shell-escape -output-directory=build/ uw-ethesis  &>> $LOGFILE

if [ $? -eq 0 ]; then
    echo "Build completed successfully"
else
    echo "Build failed"
fi
