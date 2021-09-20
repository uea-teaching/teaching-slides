HTM := $(patsubst %.md,%.html,$(wildcard *.md))
BMR := $(patsubst %.md,%.bmr.pdf,$(wildcard *.md))

all : $(HTM) $(BMR)

%.html : %.md
	pandoc $^ \
	--defaults revealjs \
	--css assets/style.css \
	-V theme=black \
	-V slideNumber="'c/t'" \
	-o $@

%.bmr.pdf : %.md
	pandoc 	$^ \
	--defaults beamer \
	-o $@

clobber : 
	rm -f $(HTM)
	rm -f $(BMR)
