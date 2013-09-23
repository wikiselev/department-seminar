all: seminar.wiki
	wiki2beamer-0.9.5/code/wiki2beamer seminar.wiki > seminar-include.txt
	pdflatex seminar
	pdflatex seminar
	cp seminar.pdf seminar-output.pdf

clean:
	rm *.toc *.log *.nav *.out *.snm *.aux