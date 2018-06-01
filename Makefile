filename=uw-ethesis
build-dir=build/

default:
	pdflatex -halt-on-error -shell-escape -output-directory=$(build-dir) $(filename) && \
	bibtex $(build-dir)/$(filename) && \
	makeglossaries $(build-dir)/$(filename) && \
	pdflatex -halt-on-error -shell-escape -output-directory=$(build-dir) $(filename) && \
	pdflatex -halt-on-error -shell-escape -output-directory=$(build-dir) $(filename)

clean:
	rm -rf ${build-dir}

