HTM := $(patsubst %.md,%.html,$(wildcard *.md))

mj := $("http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")

all : $(HTM)

%.html : %.md
	pandoc $^ \
	-t revealjs \
	--slide-level 2 \
	--standalone \
	--mathjax $(mj) \
	--template /pandoc-data/reveal-code.html \
	--css assets/style.css \
	-L /pandoc-data/revealjs-codeblock.lua \
	-V highlightjs \
	-V highlightjs-theme=zenburn \
	-V theme=blood \
	-V margin=0.2 \
	-V slideNumber="'c/t'" \
	-V center=false \
	-V transition=none \
	-o $@

clobber : 
	rm -f $(HTM)