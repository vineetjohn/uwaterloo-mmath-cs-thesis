filename=uw-ethesis
build-dir=build

default:
	mkdir -p $(build-dir) && \
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename) && \
	bibtex $(build-dir)/$(filename) && \
	makeglossaries $(build-dir)/$(filename) && \
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename) && \
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename)

read:
	xdg-open $(build-dir)/$(filename).pdf &> /dev/null &! 

clean:
	rm -rf ${build-dir}

