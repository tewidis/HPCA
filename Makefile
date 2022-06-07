MD=markdown
PDF=pdf

all: introduction metrics_and_evaluation pipelining branches predication ilp \
	instruction_scheduling reorder_buffer memory_ordering compiler_ilp vliw

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

predication: $(MD)/predication.md
	pandoc -V geometry:margin=1in -o $(PDF)/predication.pdf $(MD)/predication.md

ilp: $(MD)/ilp.md
	pandoc -V geometry:margin=1in -o $(PDF)/ilp.pdf $(MD)/ilp.md

instruction_scheduling: $(MD)/instruction_scheduling.md
	pandoc -V geometry:margin=1in -o $(PDF)/instruction_scheduling.pdf $(MD)/instruction_scheduling.md

reorder_buffer: $(MD)/reorder_buffer.md
	pandoc -V geometry:margin=1in -o $(PDF)/reorder_buffer.pdf $(MD)/reorder_buffer.md

memory_ordering: $(MD)/memory_ordering.md
	pandoc -V geometry:margin=1in -o $(PDF)/memory_ordering.pdf $(MD)/memory_ordering.md

compiler_ilp: $(MD)/compiler_ilp.md
	pandoc -V geometry:margin=1in -o $(PDF)/compiler_ilp.pdf $(MD)/compiler_ilp.md

vliw: $(MD)/vliw.md
	pandoc -V geometry:margin=1in -o $(PDF)/vliw.pdf $(MD)/vliw.md
