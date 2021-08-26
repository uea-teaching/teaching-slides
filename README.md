# Teaching Slides

Creating slides using `markdown` and `pandoc` to output `html`, `pdf` and `powerpoint`.


## Building Slides

There is a `Makefile` in the slides directory, so you can use `make` to build the slides. This also works well with a docker image.


## Docker

There is a `Dockerfile` that encapsulates useful filters, templates and pandoc.
The slides can then be built using:

    docker run --rm -it -v "${PWD}"/slides:/src dgrnwd/teachingslides:latest 
