FROM pandoc/ubuntu-latex:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install panflute pandocfilters pantable
RUN mkdir /src

RUN mkdir /pandoc-data
COPY pandoc/* /pandoc-data/

WORKDIR /src
ENTRYPOINT [ "make" ]
