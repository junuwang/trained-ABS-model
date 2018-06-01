FROM nightseas/cuda-torch:latest

MAINTAINER Falcon Dai <me@falcondai.com>

# install NLTK
RUN easy_install nltk

# install tokenizers
RUN python -c "import nltk; nltk.download('punkt')"

RUN git clone https://github.com/junuwang/NAMAS

RUN cd NAMAS

RUN git clone https://github.com/junuwang/trained-ABS-model

RUN ./trained-ABS-model/download-script.sh

WORKDIR /root
