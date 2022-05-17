MD=markdown
PDF=pdf

all: introduction metrics_and_evaluation pipelining branches

clean:
	rm -f *~
	rm -f $(PDF)/*
	rm -f $(MD)/*~

introduction: $(MD)/introduction.md
	pandoc -V geometry:margin=1in -o $(PDF)/introduction.pdf $(MD)/introduction.md

metrics_and_evaluation: $(MD)/metrics_and_evaluation.md
	pandoc -V geometry:margin=1in -o $(PDF)/metrics_and_evaluation.pdf $(MD)/metrics_and_evaluation.md

pipelining: $(MD)/pipelining.md
	pandoc -V geometry:margin=1in -o $(PDF)/pipelining.pdf $(MD)/pipelining.md

branches: $(MD)/branches.md
	pandoc -V geometry:margin=1in -o $(PDF)/branches.pdf $(MD)/branches.md
