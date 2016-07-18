TESTS := $(wildcard tests/*-input.txt)
TESTS := $(TESTS:%-input.txt=%-output.txt)

all: README.md $(TESTS)
clean:
	rm tests/*-output.txt

README.md: README.md.in $(TESTS)
	perl tools/cat.pl $< > $@

%-output.txt: %-input.txt pangu.pl
	cat $< | \
		perl pangu.pl > $@
