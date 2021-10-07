HTM := $(patsubst %.md,%.html,$(wildcard *.md))
BMR := $(patsubst %.md,%.bmr.pdf,$(wildcard *.md))
PPT := $(patsubst %.md,%.pptx,$(wildcard *.md))

all : $(HTM) $(BMR) $(PPT)

%.html : %.md
	pandoc $^ \
	--defaults revealjs \
	--css assets/style.css \
	-V highlightjs-theme=atom-one-dark \
	-V theme=black \
	-o $@

%.bmr.pdf : %.md
	pandoc 	$^ \
	--defaults beamer \
	-o $@

%.pptx : %.md
	pandoc 	$^ \
	-t pptx \
	--slide-level 2 \
	--lua-filter pptx-replace-video.lua \
	-V monofont=Courier \
	-o $@
