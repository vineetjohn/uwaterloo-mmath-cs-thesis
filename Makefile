filename=uw-ethesis
build-dir=build/

default:
	mkdir -p $(build-dir) && \
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename) && \
	bibtex $(build-dir)/$(filename) && \
	makeglossaries $(build-dir)/$(filename) && \
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename) && \
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename)

clean:
	rm -rf ${build-dir}
