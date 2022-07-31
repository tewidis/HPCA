MD=markdown
PDF=pdf

all: ta_notes introduction metrics_and_evaluation pipelining branches predication \
	ilp instruction_scheduling reorder_buffer memory_ordering compiler_ilp vliw \
	caches virtual_memory advanced_caches memory storage fault_tolerance \
	multi_processing cache_coherence synchronization memory_consistency many_cores \
	final_1 final_2

clean:
	rm -f *~
	rm -f $(PDF)/*
	rm -f $(MD)/*~

ta_notes: $(MD)/ta_notes.md
	pandoc -V geometry:margin=1in -o $(PDF)/ta_notes.pdf $(MD)/ta_notes.md

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

caches: $(MD)/caches.md
	pandoc -V geometry:margin=1in -o $(PDF)/caches.pdf $(MD)/caches.md

virtual_memory: $(MD)/virtual_memory.md
	pandoc -V geometry:margin=1in -o $(PDF)/virtual_memory.pdf $(MD)/virtual_memory.md

advanced_caches: $(MD)/advanced_caches.md
	pandoc -V geometry:margin=1in -o $(PDF)/advanced_caches.pdf $(MD)/advanced_caches.md

memory: $(MD)/memory.md
	pandoc -V geometry:margin=1in -o $(PDF)/memory.pdf $(MD)/memory.md

storage: $(MD)/storage.md
	pandoc -V geometry:margin=1in -o $(PDF)/storage.pdf $(MD)/storage.md

fault_tolerance: $(MD)/fault_tolerance.md
	pandoc -V geometry:margin=1in -o $(PDF)/fault_tolerance.pdf $(MD)/fault_tolerance.md

multi_processing: $(MD)/multi_processing.md
	pandoc -V geometry:margin=1in -o $(PDF)/multi_processing.pdf $(MD)/multi_processing.md

cache_coherence: $(MD)/cache_coherence.md
	pandoc -V geometry:margin=1in -o $(PDF)/cache_coherence.pdf $(MD)/cache_coherence.md

synchronization: $(MD)/synchronization.md
	pandoc -V geometry:margin=1in -o $(PDF)/synchronization.pdf $(MD)/synchronization.md

memory_consistency: $(MD)/memory_consistency.md
	pandoc -V geometry:margin=1in -o $(PDF)/memory_consistency.pdf $(MD)/memory_consistency.md

many_cores: $(MD)/many_cores.md
	pandoc -V geometry:margin=1in -o $(PDF)/many_cores.pdf $(MD)/many_cores.md

final_1: $(MD)/final_1.md
	pandoc -V geometry:margin=1in -o $(PDF)/final_1.pdf $(MD)/final_1.md

final_2: $(MD)/final_2.md
	pandoc -V geometry:margin=1in -o $(PDF)/final_2.pdf $(MD)/final_2.md
