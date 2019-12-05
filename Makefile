CC = gcc
src = $(wildcard *.c)
obj = $(src:.c=.o)

build: $(obj)
	$(CC) -o parse_nucleotide_fasta.out $^ 

run: clean build
	./parse_nucleotide_fasta.out

.PHONY: clean
clean:
	rm -f $(obj) parse_nucleotide_fasta.out