FROM pandoc/ubuntu-latex:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 --no-cache-dir install \
    panflute pandocfilters pantable \
    numpy matplotlib Pillow

RUN mkdir -p /src /img \
    /root/.pandoc/templates \
    /root/.pandoc/filters \
    /root/.pandoc/defaults

COPY pandoc/templates/* /root/.pandoc/templates/
COPY pandoc/filters/* /root/.pandoc/filters/
COPY pandoc/defaults/* /root/.pandoc/defaults/
COPY pandoc/img/* /img/

WORKDIR /src
ENTRYPOINT [ "make" ]
