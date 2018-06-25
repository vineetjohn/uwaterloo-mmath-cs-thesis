filename=uw-ethesis
build-dir=build

pdf:
	mkdir -p $(build-dir)
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename)
	bibtex $(build-dir)/$(filename)
	makeglossaries $(build-dir)/$(filename)
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename)
	pdflatex -halt-on-error -output-directory=$(build-dir) $(filename)

read: pdf
	xdg-open $(build-dir)/$(filename).pdf &> /dev/null 

clean:
	rm -rf ${build-dir}
